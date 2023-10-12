//
//  ContentView.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            Circle()
                .fill(Color.white)
                .frame(width: 950, height: 950)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 945, height: 945)
                        
            Circle()
                .fill(Color.white)
                .frame(width: 750, height: 750)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 745, height: 745)
            
            Circle()
                .fill(Color.white)
                .frame(width: 550, height: 550)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 545, height: 545)
            
            Circle()
                .fill(Color.white)
                .frame(width: 350, height: 350)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 345, height: 345)
            
            Circle()
                .fill(Color.white)
                .frame(width: 150, height: 150)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 145, height: 145)
            
            VStack{
                Image(systemName: "waveform.path.ecg")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black
                                )
                
                Text("Copywrite")
                                    .foregroundColor(.black)
            }
        }
    }
}
#Preview {
    ContentView()
}
