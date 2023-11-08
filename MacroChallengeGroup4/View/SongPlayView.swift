//
//  SongPlayView.swift
//  MacroChallengeGroup4
//
//  Created by Timothyus Kevin Dewanto on 30/10/23.
//

import Foundation
import SwiftUI

struct SongPlayView: View{
    
    var SongName: String = "SUPER SHY"
    var SingerName: String = "New Jeans"
    var Genre: String = "K-POP"
    
    @State var Metronome: String = "OFF"
    @State var Speed: String = "1x"
    
    @State private var isMetronomOn = false
    @State private var isSpeedOn = false
    
    var body: some View{
        ZStack{
            Color(Color("Yellow"))
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
                ///Bagian Atas(Icon, Judul, Pause Button
                VStack{
                    HStack{
                        ///Gambar Lagu
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                            
                            Image(systemName:  "photo") // Profile Image
                                .resizable()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color("Papyrus"))
                        }
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color("Navy"))
                        
                        ///Tulisan Judul Lagu + Penyanyi
                        VStack{
                            HStack{
                                Text(SongName)
                                    .font(.title)
                                    .bold()
                                Spacer()
                            }
                            
                            Rectangle()
                                .frame(width: 300, height: 2)
                            
                            HStack{
                                Text(SingerName)
                                Spacer()
                            }
                        }
                        .frame(width: 300)
                        .foregroundColor(Color("Navy"))
                        
                        Spacer()
                        
                        ///Button Metronom
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 40)
                            
                            HStack{
                                Text("Metronome")
                                    .foregroundColor(Color("Navy"))
                                
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
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 40, height: 35)
                                            .foregroundColor(Color("Navy"))
                                        
                                        Text(Metronome)
                                    }
                                }
                            }
                        }
                        .frame(width: 150, height: 40)
                        .foregroundColor(Color("Papyrus"))
                        
                        ///Button Speed
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 130, height: 40)
                            
                            HStack{
                                Text("Speed")
                                    .foregroundColor(Color("Navy"))
                                
                                Button(action: {
                                    if isSpeedOn == false{
                                        isSpeedOn = true
                                        print(isSpeedOn)
                                        Speed = "0,75x"
                                    }
                                    else{
                                        isSpeedOn = false
                                        print(isSpeedOn)
                                        Speed = "1x"
                                    }
                                }) {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 55, height: 35)
                                            .foregroundColor(Color("Navy"))
                                        
                                        Text(Speed)
                                    }
                                }
                            }
                        }
                        .frame(width: 130, height: 40)
                        .foregroundColor(Color("Papyrus"))
                        
                        ///Button Pause
                        Button(action: {
                            
                        }) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color("Navy"))
                                
                                Image(systemName:  "pause.fill")
                                    .resizable()
                                    .frame(width: 20, height: 25)
                                    .foregroundColor(Color("Papyrus"))
                            }
                            .frame(width: 40, height: 40)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 200)
                }
                
                ///Bagian Bawah(space buat tampilan play nya)
                VStack{
                    Spacer()
                        .frame(height: 150)
                    
                    HStack{
                        Spacer()
                        
                        Rectangle().roundedCorner(45, corners: [.bottomLeft, .topLeft])
                            .edgesIgnoringSafeArea(.trailing)
                            .frame(width: 700, height: 170)
                            .foregroundColor(Color("Papyrus"))
                    }
                }
            }
            
        }
    }
}

#Preview {
    SongPlayView()
}

