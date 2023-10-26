//
//  SongPlayView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 24/10/23.
//

import Foundation
import SwiftUI

struct SongPlayView: View{
    
    var SongName: String = "SUPER SHY"
    var SingerName: String = "New Jeans"
    var Genre: String = "K-POP"
    
    @State var Metronome: String = "OFF"
    
    @State private var isPauseOn = false
    @State private var isMetronomOn = false
    @State private var isSpeedOn = false
    
    var body: some View{
        ZStack{
            Color("Yellow")
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
                VStack{
                    HStack {
                        Image(systemName:  "photo") // Profile Image
                            .resizable()
                            .frame(width: 60, height: 60)
                            .padding()
                        
                        VStack{
                            HStack{
                                Text(SongName.uppercased() + " - " + SingerName.uppercased()) // Judul Lagu + Penyanyi
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(Color("Navy"))
                                    .underline()
                                
                                Spacer()
                            }
                            
                            HStack{
                                Text(Genre)
                                    .font(.headline)
                                    .foregroundColor(Color("Navy"))
                                
                                Spacer()
                            }
                        }
                        .padding(.top, 5)
                        
                        Spacer()
                        
                        HStack{
                            Button(action: {
                                
                            }) {
                                Image(systemName:  "pause.rectangle.fill") // Pause Button
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color("Navy"))
                                    .background(Color("Papyrus"))
                                    .cornerRadius(5)
                            }
                            
                            HStack{ // Metronom Button
                                Text("Metronome")
                                    .padding(3)
                                Button(action: {
                                    if isMetronomOn == false{
                                        isMetronomOn = true
                                        print(isMetronomOn)
                                        Metronome = "ON"
                                    }
                                    else{
                                        isMetronomOn = false
                                        print(isMetronomOn)
                                        Metronome = "OFF"
                                    }
                                    
                                }) {
                                    Text(Metronome)
                                        .foregroundColor(Color("Papyrus"))
                                        .frame(width: 40, height: 40)
                                        .background(Color("Navy"))
                                        .cornerRadius(7)
                                        .padding(4)
                                }
                            }
                            .background(Color("Papyrus"))
                            .cornerRadius(5)
                            .frame(width: 145, height: 40)
                            
                            HStack{ // Speed Setting
                                Text("Speed")
                                    .padding(3)
                                Button(action: {
                                    
                                }) {
                                    Text("0,75 X")
                                        .foregroundColor(Color("Papyrus"))
                                        .frame(width: 60, height: 40)
                                        .background(Color("Navy"))
                                        .cornerRadius(7)
                                        .padding(4)
                                    
                                }
                            }
                            .background(Color("Papyrus"))
                            .cornerRadius(5)
                            .frame(width: 145, height: 40)
                            
                        }
                    }
                    .padding(.leading, 5)
                    //.padding(.trailing, 10)
                    Spacer()
                    
                    ZStack{
                        HStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: 70)
                                .edgesIgnoringSafeArea(.trailing)
                                .padding(.top, 30)
                                .padding(.bottom, 50)
                                .padding(.leading, 10)
                        }
                        
                        HStack(spacing: 0){
                            Image("LineEnd")
                                .resizable()
                                .frame(width: 5, height: 117)
                                .padding(.top, 30)
                                .padding(.bottom, 53)
                                .padding(.leading, 40)
                            
                            Image("barline")
                                .resizable()
                                .frame(height: 120)
                                .edgesIgnoringSafeArea(.trailing)
                                .padding(.top, 30)
                                .padding(.bottom, 50)
                                //.padding(.leading, 40)
                        }
                    }
                    .foregroundColor(Color("Papyrus"))
                    
                }
            }
            .padding(.top, 5)
            .foregroundColor(Color("Navy"))
        }
    }
}

#Preview {
    SongPlayView()
}

