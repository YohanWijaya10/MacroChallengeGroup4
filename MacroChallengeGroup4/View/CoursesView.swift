//
//  LearningView.swift
//  MacroCoba2
//
//  Created by Brian Putrantio on 30/10/23.
//

import Foundation
import SwiftUI

struct CoursesView: View {
    var body: some View {
        ZStack{
            
            VStack(spacing: .zero){
                HStack{
                    ZStack{
                        Rectangle()
                            .fill(Color("Yellow"))
                            .frame(maxWidth: .infinity, maxHeight: 80)
                        
                        ZStack{
                            ZStack{
                                NavigationLink(destination: MainPageView(NamaUser: "Nadine").navigationBarHidden(true)) {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(Color("Navy"))
                                            .cornerRadius(10)
                                        
                                        Image(systemName:  "arrowshape.turn.up.backward.fill")
                                            .foregroundColor(Color("Papyrus"))
                                    }
                                }
//                                Button(action: {
//
//                                }) {
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 10)
//                                            .frame(width: 50, height: 50)
//                                            .foregroundColor(Color("Navy"))
//                                            .cornerRadius(10)
//
//                                        Image(systemName:  "arrowshape.turn.up.backward.fill")
//                                            .foregroundColor(Color("Papyrus"))
//                                    }
//                                }
                            }
                            .padding(.trailing, 650)
                            
                            Text("Courses")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color("Navy"))
                        }
                    }
                }
                
                HStack(spacing: .zero){
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Papyrus"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            Image("Rhino Welcome")
                                .padding(.trailing, 580)
                                .padding(.top, 110)
                            
                            ZStack{
                                
                                ScrollView(.horizontal){
                                    HStack{
                                        Rectangle()
                                            .fill(Color("Papyrus"))
                                            .frame(width: 60, height: .infinity)
                                        
                                        VStack{
                                            HStack{
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 1")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.trailing, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 3")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.trailing, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 5")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.trailing, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                            }
                                            
                                            Spacer()
                                            
                                            HStack{
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 2")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.leading, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 4")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.leading, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                                Button(action: {
                                                    
                                                }) {
                                                    ZStack{
                                                        Circle()
                                                        
                                                        Image("Dummy Icon")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Image("Courses Icon Frame")
                                                            .resizable()
                                                            .scaledToFit()
                                                        
                                                        Text("Pattern 6")
                                                            .font(.system(size: 20))
                                                            .bold()
                                                            .padding(.top, 65)
                                                    }
                                                    .frame(width: 120)
                                                    .padding(.leading, 150)
                                                    .foregroundColor(.white)
                                                }
                                                
                                            }
                                        }
                                        .padding(.top, 10)
                                        .padding(.bottom, 10)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    CoursesView()
}
