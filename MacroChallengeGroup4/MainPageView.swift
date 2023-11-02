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
            Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.8784313725, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
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
                        
                        Image("Help_Icons") // Button ?
                            .resizable()
                            .frame(width: 90, height: 90)
                            .padding()
                        Image("Setting_Icon") // Button Setting
                            .resizable()
                            .frame(width: 60, height: 60)
                            .padding()
                    }
                    .padding(.top, 5)
                    .padding(.leading, 5)
                    Spacer()
                }.foregroundColor(.yellow)
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
                    
                    /*Image("chair") // Button Courses
                     .resizable()
                     .frame(width: 150, height: 100)
                     .padding(30)*/
                    
                    Button(action: {
                        withAnimation {
                            Courses_isPressed.toggle()
                        }
                    }) {
                        Text("Courses")
                            .font(.title)
                            .frame(width: 150, height: 100)
                            .padding()
                            .background(Courses_isPressed ? Color.blue : Color.green)
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
                .padding()
        }
    }
}

#Preview {
    MainPageView()
}

