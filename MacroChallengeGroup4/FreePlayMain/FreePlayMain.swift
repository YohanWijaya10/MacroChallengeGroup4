//
//  FreePlayMain.swift
//  Ragnaröcker
//
//  Created by Timothyus Kevin Dewanto on 17/10/23.
//

import SwiftUI
import Foundation

var buttonUp: some View {
    Rectangle().frame(maxWidth: .infinity, maxHeight: .infinity)
}

class isPressed{
    
}

struct FreePlayMain: View {
    var body: some View {
        VStack(alignment: .center, spacing: .zero){
            HStack(spacing: .zero){
                VStack{
                    Rectangle()
                        .fill(Color("Yellow"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack (spacing: .zero){
                                Text("Your ")
                                Text("Left ")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                Text("Hand")
                            }
                                .font(.system(size: 20, design: .rounded))
                                .foregroundColor(Color.black)
                        )
                }
                VStack{
                    Rectangle()
                        .fill(Color("Yellow"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack (spacing: .zero) {
                                Text("Your ")
                                Text("Right ")
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                Text("Hand")
                            }
                                .font(.system(size: 20, design: .rounded))
                                .foregroundColor(Color.black)
                        )
                }
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.15)
            
            HStack(spacing: .zero){
                VStack{
                    Rectangle()
                        .fill(Color("Navy"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack {
                                Text("Snare")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(0.3)
                            }
                                .font(.title)
                                .foregroundColor(Color.black)
                        )
                }
                VStack{
                    Rectangle()
                        .fill(Color("Teal"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack {
                                Text("Snare")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(0.3)
                            }
                                .font(.title)
                                .foregroundColor(Color.black)
                        )
                }
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.3)
            
            HStack(spacing: .zero){
                VStack{
                    Rectangle()
                        .fill(Color("Bright Teal"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack {
                                Text("Kick")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(0.3)
                            }
                                .font(.title)
                                .foregroundColor(Color.black)
                        )
                }
                VStack{
                    Rectangle()
                        .fill(Color("Pink"))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            HStack {
                                Text("Kick")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(0.3)
                            }
                                .foregroundColor(Color.black)
                        )
                }
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.55)
            
        }
        .ignoresSafeArea(.all)
        
    }
    
}


#Preview {
    FreePlayMain()
}


