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
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 50)
                                                    .frame(width: 80, height: 30)
                                                    .foregroundColor(Color("Navy"))
                                                
                                                Text("All")
                                                    .foregroundColor(Color("Papyrus"))
                                            }
                                            .padding(.leading, 10)
                                            .padding(.trailing, 30)
                                            
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
                                                .frame(width: 150, height: 180)
                                                .foregroundColor(Color("Cyan"))
                                                .padding(.top, 50)
                                            
                                            Text("Item \(index + 1)")
                                            
                                            VStack{
                                                Spacer()
                                                    .frame(height: 160)
                                                
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .frame(width: 120, height: 35)
                                                        .foregroundColor(Color("Navy"))
                                                    
                                                    HStack{
                                                        VStack{
                                                            Text("Song Title")
                                                                .font(.footnote)
                                                                .bold()
                                                            
                                                            HStack{
                                                                Text("Artist")
                                                                    .font(.footnote)
                                                                
                                                                Spacer()
                                                                    .frame(width: 30)
                                                            }
                                                        }
                                                        
                                                        Spacer()
                                                            .frame(width: 40)
                                                    }
                                                    .foregroundColor(Color("White"))
                                                    
                                                    HStack{
                                                        Spacer()
                                                            .frame(width: 80)
                                                        ZStack{
                                                            Circle()
                                                            
                                                            Image(systemName: "arrow.right")
                                                                .foregroundColor(Color("Navy"))
                                                        }
                                                        .frame(width: 25)
                                                    }
                                                    .foregroundColor(Color("White"))
                                                }
                                                .frame(width: 120, height: 35)
                                            }
                                        }
                                        .frame(width: 150, height: 180)
                                        .padding(.horizontal, 12)
                                        .padding(.bottom, 30)
                                    }
                                }
                                
                                HStack{
                                    ForEach(0..<4, id: \.self) { index in
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .frame(width: 150, height: 180)
                                                .foregroundColor(Color("Cyan"))
                                                .padding(.top, 50)
                                            
                                            Text("Item \(index + 5)")
                                            
                                            VStack{
                                                Spacer()
                                                    .frame(height: 160)
                                                
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .frame(width: 120, height: 35)
                                                        .foregroundColor(Color("Navy"))
                                                    
                                                    HStack{
                                                        VStack{
                                                            Text("Song Title")
                                                                .font(.footnote)
                                                                .bold()
                                                            
                                                            HStack{
                                                                Text("Artist")
                                                                    .font(.footnote)
                                                                
                                                                Spacer()
                                                                    .frame(width: 30)
                                                            }
                                                        }
                                                        
                                                        Spacer()
                                                            .frame(width: 40)
                                                    }
                                                    .foregroundColor(Color("White"))
                                                    
                                                    HStack{
                                                        Spacer()
                                                            .frame(width: 80)
                                                        ZStack{
                                                            Circle()
                                                            
                                                            Image(systemName: "arrow.right")
                                                                .foregroundColor(Color("Navy"))
                                                        }
                                                        .frame(width: 25)
                                                    }
                                                    .foregroundColor(Color("White"))
                                                }
                                                .frame(width: 120, height: 35)
                                            }
                                        }
                                        .frame(width: 150, height: 180)
                                        .padding(.horizontal, 12)
                                        .padding(.bottom, 30)
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
