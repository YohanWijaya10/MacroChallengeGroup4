//
//  SongListView.swift
//  MacroCoba2
//
//  Created by Brian Putrantio on 23/10/23.
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
                                        NavigationLink(destination: MainPageView(NamaUser: "Nadine").navigationBarHidden(true)) {
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 10)
                                                    .frame(width: 40, height: 40)
                                                    .foregroundColor(Color("Navy"))
                                                    .cornerRadius(10)
                                                
                                                Image(systemName:  "arrowshape.turn.up.backward.fill")
                                                    .foregroundColor(Color("Papyrus"))
                                            }
                                            .padding(.trailing, 650)
                                        }
//                                        Button(action: {
//
//                                        }) {
//                                            ZStack{
//                                                RoundedRectangle(cornerRadius: 10)
//                                                    .frame(width: 40, height: 40)
//                                                    .foregroundColor(Color("Navy"))
//                                                    .cornerRadius(10)
//
//                                                Image(systemName:  "arrowshape.turn.up.backward.fill")
//                                                    .foregroundColor(Color("Papyrus"))
//                                            }
//                                            .padding(.trailing, 650)
//                                        }
                                        
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
        }
    }
}

#Preview {
    SongListView()
}
