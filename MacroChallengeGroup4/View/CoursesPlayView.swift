//
//  SongLearningView.swift
//  MacroChallengeGroup4
//
//  Created by Timothyus Kevin Dewanto on 30/10/23.
//

import SwiftUI

struct SongLearningView: View {
    var body: some View{
        ZStack{
            Color(Color("Yellow"))
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
                ///Bagian Atas(Icon, Judul, Pause Button
                VStack{
                    HStack{
                        ///Logo Icon
                        ZStack{
                            Circle()
                            
                            Image("Dummy Icon")
                                .resizable()
                                .scaledToFit()
                            
                            Image("Courses Icon Frame")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color("Pink"))
                            
                            Text("Pattern 1")
                                .font(.system(size: 20))
                                .bold()
                                .padding(.top, 65)
                        }
                        .frame(width: 120)
                        .foregroundColor(Color("White"))
                        
                        ///Tulisan Pattern
                        VStack{
                            HStack{
                                Text("Pattern 1")
                                    .font(.largeTitle)
                                    .bold()
                                Spacer()
                            }
                            
                            Rectangle()
                                .frame(width: 200, height: 2)
                            
                            HStack{
                                Text("Courses")
                                Spacer()
                            }
                        }
                        .frame(width: 200)
                        .foregroundColor(Color("Navy"))
                        
                        Spacer()
                        
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
    }}

#Preview {
    SongLearningView()
}
