//
//  CoursesView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 01/11/23.
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
            
            HStack {
                VStack{
                    NavigationLink(destination: MainPageView(NamaUser: "Osama").navigationBarHidden(true)) {
                        ZStack{
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .background(Color("Navy"))
                                .opacity(1.0)
                                .roundedCorner(10, corners: .allCorners)
                            Image(systemName: "arrow.uturn.backward")
                                .foregroundColor(.white).bold()
                        }
                    }
                    .padding(.init(top: 20, leading: 20, bottom: 0, trailing: 20))
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    CoursesView()
}
