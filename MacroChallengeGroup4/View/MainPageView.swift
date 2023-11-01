//
//  MainPageView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 23/10/23.
//

import Foundation
import SwiftUI

struct MainPageView: View{
    var NamaUser: String
    @State private var Freeplay_isPressed = false
    @State private var Songs_isPressed = false
    @State private var Courses_isPressed = false
    
    var body: some View{
        NavigationStack{
            ZStack{
                Color("Papyrus")
                    .edgesIgnoringSafeArea(.all)
                
                ZStack{
                    VStack{
                        Rectangle().roundedCorner(50, corners: [.bottomLeft, .bottomRight])
                            .edgesIgnoringSafeArea(.horizontal)
                            .frame(width: 800, height: 120)
                            .foregroundColor(Color("Yellow"))
                        
                        Spacer()
                    }
                    
                    VStack{
                        HStack {
                            Image(systemName:  "person.crop.circle.fill") // Profile Image
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding()
                            
                            Text("Hi, " + NamaUser + " !") // Nama User
                                .font(.title)
                                .foregroundColor(Color("Navy"))
                            
                            Spacer()
                            
                            Button(action: {
                                withAnimation {
                                    
                                }
                            }) {
                                Image(systemName: "gearshape.fill")
                                    .font(.title)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                    .background(Color("Navy"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .padding(30)
                            }
                        }
                        .padding(.top, 5)
                        .padding(.leading, 5)
                        Spacer()
                    }
                    .foregroundColor(Color("Papyrus"))
                }
                Spacer()
                
                VStack{
                    HStack{
                        NavigationLink(destination: CoursesView().navigationBarHidden(true)) {
                            ZStack{
                                Image("CoursesButton")
                                    .resizable()
                                    .scaledToFit()
                                
                                Spacer()
                                Text("Courses")
                                    .font(.headline)
                                    .bold()
                                    .shadow(radius: 100)
                                    .padding(.top, 90)
                            }
                            .frame(width: 200, height: 150)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Courses_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(10)
                        }
                        
                        NavigationLink(destination: SongListView().navigationBarHidden(true)) {
                            ZStack{
                            Image("SongsButton")
                            .resizable()
                            .scaledToFit()
                            
                            Spacer()
                            Text("Songs")
                            .font(.headline)
                            .bold()
                            .shadow(radius: 100)
                            .padding(.top, 90)
                            }
                            .frame(width: 200, height: 150)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Freeplay_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(10)
                        }
                        
                        NavigationLink(destination: FreePlayView().navigationBarHidden(true)) {
                            ZStack{
                            Image("FreePlayButton")
                            .resizable()
                            .scaledToFit()
                            
                            Spacer()
                            Text("Free Play")
                            .font(.headline)
                            .bold()
                            .shadow(radius: 100)
                            .padding(.top, 90)
                            }
                            .frame(width: 200, height: 150)
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Freeplay_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(10)
                        }
                    }
                    .padding(.top, 130)
                    .padding(.bottom, 50)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    MainPageView(NamaUser: "Nadine")
}

