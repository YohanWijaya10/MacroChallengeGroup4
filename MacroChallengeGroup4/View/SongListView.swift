//
//  SongListView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 30/10/23.
//

import Foundation
import SwiftUI

struct SongListView: View {
    
    let Allitems = ["Super Shy"]
    let KPop = ["Super Shy"]
    
    var body: some View {
        ZStack{
            Color("Papyrus")
                .edgesIgnoringSafeArea(.all)
            
            ZStack{
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 40)
                            .edgesIgnoringSafeArea(.all)
                            .foregroundColor(Color("Yellow"))
                            .frame(width: 800, height: 120)
                        
                        VStack{
                            ZStack{
                                VStack{
                                    ZStack{
                                        Text("Songs")
                                            .font(.title)
                                            .bold()
                                            .foregroundColor(Color("Navy"))
                                    }
                                    .padding(.bottom, 1)
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 50)
                                            .frame(width: 700, height: 40)
                                            .foregroundColor(Color("Papyrus"))
                                        HStack{
                                            Text("All")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 50)
                                            
                                            Text("Pop")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 50)
                                            
                                            Text("Rock")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 50)
                                            
                                            Text("Hip/Hop")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 50)
                                            
                                            Text("Electronic")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 50)
                                            
                                            Text("K-Pop")
                                                .padding(.leading, 10)
                                                .padding(.trailing, 10)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    ZStack{
                        ScrollView{
                            VStack{
                                HStack{
                                    ForEach(0..<4, id: \.self) { index in
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .frame(width: 120, height: 150)
                                                .foregroundColor(Color("Navy"))
                                                .padding(.top, 50)
                                            
                                            Text("Item \(index + 1)")
                                        }
                                        .padding(.horizontal, 30)
                                    }
                                }
                                
                                HStack{
                                    ForEach(0..<4, id: \.self) { index in
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .frame(width: 120, height: 150)
                                                .foregroundColor(Color("Navy"))
                                                .padding(.top, 50)
                                            
                                            Text("Item \(index + 5)")
                                        }
                                        .padding(.horizontal, 30)
                                    }
                                }
                            }
                        }
                    }
                    
                    
                }
            }
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
                    .padding(.init(top: 10, leading: 60, bottom: 10, trailing: 10))
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SongListView()
}
