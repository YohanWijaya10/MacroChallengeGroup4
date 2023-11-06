//
//  FreePlayMain.swift
//  Ragnaröcker
//
//  Created by Timothyus Kevin Dewanto on 17/10/23.
//

import SwiftUI

struct FreePlayView: View {
    
    @State private var isHighlightingLeftSnare = false
    @State private var isHighlightingRightSnare = false
    @State private var isHighlightingLeftKick = false
    @State private var isHighlightingRightKick = false
    @State private var warna: Color = .black
    @State private var opacity1: Double = 0.5
    
    @EnvironmentObject var service: BluetoothService

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
                                if service.SnareV == 4 {
                                    isHighlightingLeftSnare.toggle()
                                    if isHighlightingLeftSnare {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
                                            withAnimation {
                                                isHighlightingLeftSnare = false
                                            }
                                        }
                                    }
                                }
                            }) {
                                if service.SnareV ==  1{
                                    Text("Snare")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(1)
                                        .foregroundColor(isHighlightingLeftSnare ? .black : .black)
                                        .animation(.easeInOut(duration: 0.5))
                                }else if service.SnareV == 4{
                                    Text("Snare")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(0.3)
                                        .foregroundColor(isHighlightingLeftSnare ? .black : .black)
                                        .animation(.easeInOut(duration: 0.5))
                                }
                                else{
                                    Text("Snare")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(0.3)
                                        .foregroundColor(isHighlightingLeftSnare ? .black : .black)
                                        .animation(.easeInOut(duration: 0.5))
                                }
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
                                if service.SnareV == 4{
                                    Text("Kick")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(1)
                                        .foregroundColor(isHighlightingRightKick ? .black : .black)
                                        .animation(.easeInOut(duration: 1))
                                }else if service.SnareV == 1{
                                    Text("Kick")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(0.3)
                                        .foregroundColor(isHighlightingRightKick ? .black : .black)
                                        .animation(.easeInOut(duration: 1))
                                
                                }else{
                                    Text("Kick")
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .opacity(0.3)
                                        .foregroundColor(isHighlightingRightKick ? .black : .black)
                                        .animation(.easeInOut(duration: 1))
                                    
                                }
                            }
                            
                            ButtonAnimationModel(isHighlightingObject: $isHighlightingRightKick)
                        }
                    }
                }
                .frame(maxHeight: UIScreen.main.bounds.height * 0.55)
                
            }
            .ignoresSafeArea(.all)
            HStack {
                VStack{
                    NavigationLink(destination: MainPageView(NamaUser: "Osama").navigationBarHidden(true)) {
                        ZStack{
                            Rectangle()
                                .frame(width: 40, height: 40)
                                .background(Color("Navy"))
                                .roundedCorner(10, corners: .allCorners)
                            Image(systemName: "arrow.uturn.backward")
                                .foregroundColor(.white).bold()
                        }
                    }
                    .padding(10)
        
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
    
}


#Preview {
    FreePlayView()
}


