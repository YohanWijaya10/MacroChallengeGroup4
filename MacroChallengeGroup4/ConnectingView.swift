//
//  ContentView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI
import CoreBluetooth
import Foundation
import AVFoundation
import Combine

enum ConnectionStatus: String {
    case connected
    case disconnected
    case scanning
    case connecting
    case error
}

let hallSensorService: CBUUID = CBUUID(string: "4fafc201-1fb5-459e-8fcc-c5c9c331914b")
let hallSensorCharacteristic: CBUUID = CBUUID(string: "beb5483e-36e1-4688-b7f5-ea07361b26a8")

let hallSensorService2: CBUUID = CBUUID(string: "30585118-5628-47bf-b50b-3b66189e194d")
let hallSensorCharacteristic2: CBUUID = CBUUID(string: "beb5483e-36e1-4688-b7f5-ea07361b26a8")




class BluetoothService: NSObject, ObservableObject {
    @Published var characteristicValue: String = "Waiting for data..."
    private var centralManager: CBCentralManager!
    
    var hallSensorPeripheral: CBPeripheral?
    @Published var peripheralStatus: ConnectionStatus = .disconnected
    @Published var XValue: Int = 0
    @Published var AccelValue: Double = 0
    @Published var AccelValueX: Double = 0
    @Published var AccelValueZ: Double = 0
    @Published var gyroValueY: Double = 0
    @Published var gyroValueX: Double = 0
    @Published var gyroValueZ: Double = 0
    
    
    override init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    var isScanning: Bool = false

    func scanForPeripherals() {
        if isScanning == true {
            peripheralStatus = .scanning
            centralManager.scanForPeripherals(withServices: [hallSensorService])
        }
    }
    
    func connectToPeripheral() {
        if let peripheral = hallSensorPeripheral {
            centralManager.connect(peripheral)
            peripheralStatus = .connecting
        }
    }
}

extension BluetoothService: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            print("CB Powered On")
            scanForPeripherals()
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        
        if peripheral.name == "BleEsp32" {
            print("Discovered \(peripheral.name ?? "no name")")
            hallSensorPeripheral = peripheral
            centralManager.connect(hallSensorPeripheral!)
            peripheralStatus = .connecting
        }
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        peripheralStatus = .connected
        
        peripheral.delegate = self
        peripheral.discoverServices([hallSensorService])
        centralManager.stopScan()
    }
    
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        peripheralStatus = .disconnected
    }
    
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        peripheralStatus = .error
        print(error?.localizedDescription ?? "no error")
    }
    
}

extension BluetoothService: CBPeripheralDelegate {
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        for service in peripheral.services ?? [] {
            if service.uuid == hallSensorService {
                print("found service for \(hallSensorService)")
                peripheral.discoverCharacteristics([hallSensorCharacteristic], for: service)
            }
        }
    }
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        for characteristic in service.characteristics ?? [] {
            peripheral.setNotifyValue(true, for: characteristic)
            print("found characteristic, waiting on values.")
        }
    }
    
    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        if characteristic.uuid == hallSensorCharacteristic {
            guard let data = characteristic.value else {
                print("No data received for \(characteristic.uuid.uuidString)")
                return
            }
            guard let dataValue = try? JSONDecoder().decode(TestJSON.self, from: data) else { return }
//            let dataValue = String(decoding: data, as: UTF8.self)
//            let newData = TestJSON(accelX: dataValue.accelX)
//            guard let dataValue = String(data: data, encoding: String.Encoding) else { return }
//            let sensorData: Int = data.withUnsafeBytes { $0.pointee }
            
//            XValue = sensorData
//            print(XValue)
            print("Y = \(dataValue.accelY)  X = \(dataValue.accelX) Z =  \(dataValue.accelZ)")
           
            AccelValue = Double(dataValue.accelY) ?? 0
            AccelValueX = Double(dataValue.accelX) ?? 0
            AccelValueZ = Double(dataValue.accelZ) ?? 0
            gyroValueY = Double(dataValue.gyroY) ?? 0
            gyroValueX = Double(dataValue.gyroX) ?? 0
            gyroValueZ = Double(dataValue.gyroZ) ?? 0
            gyroValueX = gyroValueX * 100
            
            
        }

    }
    
}

struct TestJSON: Codable {
    var accelY: String
    var accelX: String
    var accelZ: String
    var gyroY: String
    var gyroX: String
    var gyroZ: String
}

struct ConnectingView: View {
    @StateObject var service = BluetoothService()
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var isButtonHidden = false
    @State private var buttonoutlineColor_left: Color = Color.gray
    @State private var buttonoutlineColor_right: Color = Color.gray
    @State private var Righthand: Color = Color.yellow
    @State private var isFlashing_left = true
    @State private var isFlashing_right = true
    @State var kedip: CGFloat = 3
    @State var connectOK: Bool = false
    @State var blink: Double = 0.0
    @State private var audioPlayer: AVAudioPlayer?
    
    @State private var isLeftConnected = false
    @State private var isRightConnected = false
    
    @State private var isFreeplayView = false
    
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            Group {
                Circle()
                    .fill(Color.white)
                    .frame(width: 950, height: 950)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 945, height: 945)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 750, height: 750)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 745, height: 745)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 550, height: 550)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 545, height: 545)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 350, height: 350)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 345, height: 345)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 150, height: 150)
                
                Circle()
                    .fill(Color.yellow)
                    .frame(width: 145, height: 145)
                
            } //Tampilan Lingkaran2
            
            HStack{
                
                Spacer()
                if !isButtonHidden{
                    Button(action: {
                        isLeftConnected = true
                        if isLeftConnected{
                            print("left Button Connected")
                            buttonoutlineColor_left = Color.green
                            isFlashing_left.toggle()
                        }
                        else{
                            print("left Button DisConnected")
                            buttonoutlineColor_left = Color.red
                            isFlashing_left.toggle()
                        }
                    }) {
                        ZStack{
                            VStack{
                                ZStack{
                                    
                                    Image("left_hand")
                                        .resizable()
                                        .frame(width: 65, height: 65) //size gambar tangan
                                        .frame(width: 115, height: 115) // size button lingkaran
                                        .foregroundColor(Color.black)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 115)
                                                .stroke(isFlashing_left ? buttonoutlineColor_left : Color.yellow, lineWidth: 6)
                                        )
                                }
                                Text("Left Gloves")
                                    .foregroundColor(.black)
                                
                            }
                            .onAppear {
                                withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: true)) {
                                    self.isFlashing_left.toggle()
                                }
                            }
                        }
                        
                    }
                } // Button Kiri
                else{
                    Spacer()
                }
                
                Spacer()
                
                VStack{
                    Image("Blutooth_Icon")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.black
                        )
                    
                    Text("Bluetooth")
                        .foregroundColor(.black)
                } //Icon Bluetooth di tengah
                
                Spacer()
                
                if !isButtonHidden{
                    Button(action: {
                        isRightConnected = true
                        service.connectToPeripheral()
                        if isRightConnected{
                            print("right Button Connected")
                            
                            
                            //isFlashing_right.toggle()
                            kedip = 20
                        }
                        else{
                            print("right Button DisConnected")
                            buttonoutlineColor_right = Color.red
                            
                            
                            
                            isFlashing_right.toggle()
                        }
                    }) {
                        VStack{
                            ZStack{
                                if service.peripheralStatus !=  .connected{
                                    Image("right_hand")
                                        .resizable()
                                        .frame(width: 65, height: 65) //size gambar tangan
                                        .frame(width: 115, height: 115) // size button lingkaran
                                        .foregroundColor(Color.black)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 115)
                                                .stroke(buttonoutlineColor_right, lineWidth: kedip)
                                                .opacity(blink)
                                                .animation(.easeOut(duration: 2) .repeatForever(autoreverses: true))
                                                .onAppear(){
                                                    blink = 1
                                                    print(isRightConnected)
                                                }
                                            
                                        
                                        )
                                    
                                } else{
                                    Image("right_hand")
                                        .resizable()
                                        .frame(width: 65, height: 65) //size gambar tangan
                                        .frame(width: 115, height: 115) // size button lingkaran
                                        .foregroundColor(Color.black)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 115)
                                                .stroke(Color.green, lineWidth: 6)
                                                .opacity(1)
                                                .animation(.easeOut(duration: 1))
                                                
                                        )
                                        .animation(.easeOut(duration: 1))
                                }
                                
                            }
                            .animation(.easeOut(duration: 1))
                            if service.peripheralStatus != .connected {
                                if isRightConnected == true{
                                    Text("Connecting...")
                                }
                                else{
                                    Text("Right Gloves")
                                        .foregroundColor(.black)
                                }
                            }else{
                                Text("Connected")
                                    .foregroundColor(.black)
                                
                                
                               
                            }
                            if service.peripheralStatus == .connected {
                                
                            }
                            
                        }
                        .onAppear {
                            withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: true)) {
                                self.isFlashing_right.toggle()
                            }
                        }
                    }
                } // Button Kanan
                else{
                    Spacer()
                }
                
                Spacer()
                
            }
            
            VStack {
                Group{
                    Spacer()
                    Spacer()
                }
                
                if service.peripheralStatus == .connected {
                    Button(action: {
                        print("Done Button tapped")
                        isFreeplayView = true
                        service.connectToPeripheral()
                    }) {
                        Text("Done")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 200, height: 40)
                            .background(Color(UIColor(red: 0.9647, green: 0.9059, blue: 0.7647, alpha: 1.0)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 3)
                            )
                            .cornerRadius(10)
                            
                    } // button next buat ke halaman selanjutnya setelah connect
                    .padding()
                    .sheet(isPresented: $isFreeplayView, content: {
                                    FreePlayMain()
                                })
                    
                }
                
                Spacer()
            }
            .animation(.easeOut(duration: 0.3))
            
            
            
            
        }.onAppear(){
            service.isScanning = true
        }
        .onReceive(Just(service.AccelValueX)) { xValue in
            if xValue < -13 {
                playSound(fileName: "Snare", fileExtension: "mp3")
            }
//            else if xValue > -5   {
//                playSound(fileName: "uhh", fileExtension: "mp3")
//            }
            else{
                
            }
        }
        
    }
    func playSound(fileName: String, fileExtension: String) {
        if let soundURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        }
    }
}

#Preview {
    ConnectingView()
}
