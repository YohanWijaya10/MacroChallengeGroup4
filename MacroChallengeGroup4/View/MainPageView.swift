//
//  MainPageView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 23/10/23.
//

import Foundation
import SwiftUI

struct MainPageView: View{
    var NamaUser: String = "Nadine"
    @State private var Freeplay_isPressed = false
    @State private var Songs_isPressed = false
    @State private var Courses_isPressed = false
    
    var body: some View{
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
                    Button(action: {
                        withAnimation {
                            Freeplay_isPressed.toggle()
                        }
                    }) {
                        Text("Free Play")
                            .font(.title)
                            .frame(width: 150, height: 100)
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Freeplay_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(30)
                    }
                                        
                    Button(action: {
                        withAnimation {
                            Courses_isPressed.toggle()
                        }
                    }) {
                        Text("Courses")
                            .font(.title)
                            .frame(width: 150, height: 100)
                            .padding()
                            .background(Courses_isPressed ? Color.green : Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Courses_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(30)
                    }
                    
                    Button(action: {
                        withAnimation {
                            Songs_isPressed.toggle()
                        }
                    }) {
                        Text("Songs")
                            .font(.title)
                            .frame(width: 150, height: 100)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .offset(y: Songs_isPressed ? 5 : 0) // Menggeser tombol ke bawah saat ditekan
                            .padding(30)
                    }
                }
                .padding(.top, 100)
                .padding(.bottom, 50)
            }
            
            Spacer()
        }
    }
}

#Preview {
    MainPageView()
}

