//
//  FreePlayMain.swift
//  Ragnaröcker
//
//  Created by Timothyus Kevin Dewanto on 17/10/23.
//

import SwiftUI

struct FreePlayMain: View {
    
    @State private var isHighlightingLeftSnare = false
    @State private var isHighlightingRightSnare = false
    @State private var isHighlightingLeftKick = false
    @State private var isHighlightingRightKick = false
    
    var body: some View {
        ZStack{
            
            
            VStack(alignment: .center, spacing: .zero){
                
                HStack(spacing: .zero){
                    VStack{
                        Rectangle()
                            .fill(Color("Yellow"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    VStack{
                        Rectangle()
                            .fill(Color("Yellow"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.15)
                
                HStack(spacing: .zero){
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Papyrus"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Papyrus"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.3)
                
                HStack(spacing: .zero){
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Papyrus"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Papyrus"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.55)
                
            }
            .ignoresSafeArea(.all)
            
            GeometryReader { geometry in
                let imageWidth: CGFloat = 199
                let imageHeight: CGFloat = 276
                
                Image("Kajon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth, height: imageHeight)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 1.65)
            }
            
            //  This is the code I used before using GeometryReader (But I don't think both were effective enough)
            //            Image("Kajon")
            //                .resizable()
            //                .aspectRatio(contentMode: .fit)
            //                .frame(maxWidth: 300, maxHeight: 200)
            
            VStack(alignment: .center, spacing: .zero){
                
                HStack(spacing: .zero){
                    VStack{
                        Rectangle()
                            .fill(Color("Yellow")).opacity(0.1)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .overlay(
                                HStack (spacing: .zero){
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
                            .fill(Color("Yellow")).opacity(0.1)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .overlay(
                                
                                HStack (spacing: .zero){
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
                                .fill(Color("Transparent"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            Button(action: {
                                isHighlightingLeftSnare.toggle()
                                if isHighlightingLeftSnare {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
                                        withAnimation {
                                            isHighlightingLeftSnare = false
                                        }
                                    }
                                }
                            }) {
                                Text("Snare")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(isHighlightingLeftSnare ? 1.0 : 0.3)
                                    .foregroundColor(isHighlightingLeftSnare ? .black : .black)
                            }
                            
                            ButtonAnimationModel(isHighlightingObject: $isHighlightingLeftSnare)
                        }
                    }
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Transparent"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            Button(action: {
                                isHighlightingRightSnare.toggle()
                                if isHighlightingRightSnare {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
                                        withAnimation {
                                            isHighlightingRightSnare = false
                                        }
                                    }
                                }
                            }) {
                                Text("Snare")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(isHighlightingRightSnare ? 1.0 : 0.3)
                                    .foregroundColor(isHighlightingRightSnare ? .black : .black)
                            }
                            
                            ButtonAnimationModel(isHighlightingObject: $isHighlightingRightSnare)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.3)
                
                HStack(spacing: .zero){
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Transparent"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            Button(action: {
                                isHighlightingLeftKick.toggle()
                                if isHighlightingLeftKick {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
                                        withAnimation {
                                            isHighlightingLeftKick = false
                                        }
                                    }
                                }
                            }) {
                                Text("Kick")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(isHighlightingLeftKick ? 1.0 : 0.3)
                                    .foregroundColor(isHighlightingLeftKick ? .black : .black)
                            }
                            
                            ButtonAnimationModel(isHighlightingObject: $isHighlightingLeftKick)
                        }
                    }
                    VStack {
                        ZStack {
                            Rectangle()
                                .fill(Color("Transparent"))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            Button(action: {
                                isHighlightingRightKick.toggle()
                                if isHighlightingRightKick {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
                                        withAnimation {
                                            isHighlightingRightKick = false
                                        }
                                    }
                                }
                            }) {
                                Text("Kick")
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .opacity(isHighlightingRightKick ? 1.0 : 0.3)
                                    .foregroundColor(isHighlightingRightKick ? .black : .black)
                            }
                            
                            ButtonAnimationModel(isHighlightingObject: $isHighlightingRightKick)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.55)
                
            }
            .ignoresSafeArea(.all)
            
        }
    }
    
}


#Preview {
    FreePlayMain()
}


