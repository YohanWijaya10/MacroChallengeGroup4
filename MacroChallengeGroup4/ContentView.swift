//
//  ContentView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
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
            
            HStack{
                
                Spacer()
                Button(action: {
                    print("left Button tapped")
                }) {
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
                                    .stroke(Color.gray, lineWidth: 5)
                            )
                        Text("Left Gloves")
                            .foregroundColor(.black)
                        
                    }
                    
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
                }
                
                Spacer()
                
                Button(action: {
                    print("right Button tapped")
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
                                    .stroke(Color.gray, lineWidth: 5)
                            )
                        Text("Right Gloves")
                            .foregroundColor(.black)
                        
                    }
                }
                
                Spacer()
                
            }
        }
    }
    
    func button_tapped() {
        
    }
    
}

#Preview {
    ContentView()
}
