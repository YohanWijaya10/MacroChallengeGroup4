//
//  FreePlayMain.swift
//  Ragnaröcker
//
//  Created by Timothyus Kevin Dewanto on 17/10/23.
//

import SwiftUI

struct FreePlayMain: View {
    
    @State private var isShowingLeftSnareCircle = false
    @State private var isShowingRightSnareCircle = false
    @State private var isShowingLeftKickCircle = false
    @State private var isShowingRightKickCircle = false
    
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
                            
                            HStack (spacing: .zero){
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
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color("Navy"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        Button(action: {
                            isShowingLeftSnareCircle.toggle()
                            if isShowingLeftSnareCircle {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    withAnimation {
                                        isShowingLeftSnareCircle = false
                                    }
                                }
                            }
                        }) {
                            Text("Snare")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                                .opacity(0.3)
                                .foregroundColor(Color.black)
                        }
                        
                        ButtonAnimationModel(isShowingCircle: $isShowingLeftSnareCircle)
                    }
                }
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color("Teal"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        Button(action: {
                            isShowingRightSnareCircle.toggle()
                            if isShowingRightSnareCircle {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    withAnimation {
                                        isShowingRightSnareCircle = false
                                    }
                                }
                            }
                        }) {
                            Text("Snare")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                                .opacity(0.3)
                                .foregroundColor(Color.black)
                        }
                        
                        ButtonAnimationModel(isShowingCircle: $isShowingRightSnareCircle)
                    }
                }
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.3)
            
            HStack(spacing: .zero){
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color("Bright Teal"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        Button(action: {
                            isShowingLeftKickCircle.toggle()
                            if isShowingLeftKickCircle {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    withAnimation {
                                        isShowingLeftKickCircle = false
                                    }
                                }
                            }
                        }) {
                            Text("Kick")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                                .opacity(0.3)
                                .foregroundColor(Color.black)
                        }
                        
                        ButtonAnimationModel(isShowingCircle: $isShowingLeftKickCircle)
                    }
                }
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color("Pink"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        Button(action: {
                            isShowingRightKickCircle.toggle()
                            if isShowingRightKickCircle {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    withAnimation {
                                        isShowingRightKickCircle = false
                                    }
                                }
                            }
                        }) {
                            Text("Kick")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                                .opacity(0.3)
                                .foregroundColor(Color.black)
                        }
                        
                        ButtonAnimationModel(isShowingCircle: $isShowingRightKickCircle)
                    }
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


