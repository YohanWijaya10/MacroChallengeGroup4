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
        ZStack(){
            ///scrollView tempat button buat pilih course pattern nya
            HStack(spacing: .zero){
                ScrollView(.horizontal){
                    ZStack{
                        ///background
                        Image("Map Course")
                            .resizable()
                            .frame(width: .infinity)
                        
                        ///Button Pattern
                        VStack{
                            Spacer()
                                .frame(height: 80)
                            
                            HStack{
                                Spacer()
                                    .frame(width: 40)
                                
                                VStack{
                                    ///Button Pattern yang bagian atas
                                    HStack{
                                        ///Button Pattern 1
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
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
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color("Pink"),lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "checkmark")
                                                            .foregroundColor(Color("Pink"))
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.trailing, 90)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 3
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 3")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.trailing, 90)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 5
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 5")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.trailing, 90)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 7
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 7")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.trailing, 120)
                                            .foregroundColor(.white)
                                        }
                                        
                                    }
                                    
                                    Spacer()
                                    
                                    ///Button Pattern yang bagian bawah
                                    HStack{
                                        ///Button Pattern 2
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.green)
                                                    
                                                    Text("Pattern 2")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.green,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.leading, 100)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 4
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 4")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.leading, 100)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 6
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 6")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.leading, 100)
                                            .foregroundColor(.white)
                                        }
                                        
                                        ///Button Pattern 8
                                        Button(action: {
                                            
                                        }) {
                                            ZStack{
                                                ZStack{
                                                    Circle()
                                                    
                                                    Image("Dummy Icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                    
                                                    Image("Courses Icon Frame")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .foregroundColor(.gray)
                                                    
                                                    Text("Pattern 8")
                                                        .font(.system(size: 20))
                                                        .bold()
                                                        .padding(.top, 65)
                                                }
                                                .frame(width: 120)
                                                
                                                HStack{
                                                    Spacer()
                                                        .frame(width: 100)
                                                    
                                                    ZStack{
                                                        Circle()
                                                            .strokeBorder(Color.gray,lineWidth: 1)
                                                            .background(Circle().foregroundColor(Color.white))
                                                        
                                                        Image(systemName: "lock")
                                                            .foregroundColor(.gray)
                                                    }
                                                    .frame(width: 40)
                                                }
                                            }
                                            .frame(width: 140)
                                            .padding(.leading, 100)
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
            
            ///Top Bar, Page Name and Back Button
            VStack{
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
                            }
                            .padding(.trailing, 650)
                            
                            Text("Courses")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color("Navy"))
                        }
                    }
                }
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Color("Papyrus"))
    }
}

#Preview {
    CoursesView()
}
