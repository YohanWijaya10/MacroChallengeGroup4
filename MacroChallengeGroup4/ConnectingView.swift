//
//  ContentView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI
import CoreBluetooth

struct ConnectingView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State private var isButtonHidden = false
    @State private var buttonoutlineColor_left: Color = Color.gray
    @State private var buttonoutlineColor_right: Color = Color.gray
    @State private var isFlashing_left = true
    @State private var isFlashing_right = true
    
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
                        print("left Button tapped")
                        buttonoutlineColor_left = Color.green
                        isFlashing_left.toggle()
                    }) {
                        ZStack{
                            VStack{
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
                        print("right Button tapped")
                        buttonoutlineColor_right = Color.green
                        isFlashing_right.toggle()
                    }) {
                        VStack{
                            Image("right_hand")
                                .resizable()
                                .frame(width: 65, height: 65) //size gambar tangan
                                .frame(width: 115, height: 115) // size button lingkaran
                                .foregroundColor(Color.black)
                                .background(Color.white)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 115)
                                        .stroke(isFlashing_right ? buttonoutlineColor_right : Color.yellow, lineWidth: 6)
                                )
                            Text("Right Gloves")
                                .foregroundColor(.black)
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
                Button(action: {
                    print("Done Button tapped")
                    isFreeplayView = true
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
                
                Spacer()
            }
        }
    }
}

#Preview {
    ConnectingView()
}
