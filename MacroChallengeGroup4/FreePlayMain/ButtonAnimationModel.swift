//
//  ButtonAnimationModel.swift
//  MacroChallengeGroup4
//
//  Created by Timothyus Kevin Dewanto on 18/10/23.
//

import SwiftUI

struct ButtonAnimationModel: View {
    @Binding var isShowingCircle: Bool
    
    var body: some View {
        Button(action: {
            isShowingCircle.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    isShowingCircle = false
                }
            }
        }) {
            if isShowingCircle {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color("White"))
                    .opacity(isShowingCircle ? 0.9 : 0.2)
                    .animation(.easeInOut(duration: 2.0))
                    .alignmentGuide(HorizontalAlignment.center) { a in
                        a[.leading] + (a[.trailing] - a[.leading]) / 2
                    }
                    .alignmentGuide(VerticalAlignment.center) { a in
                        a[.top] + (a[.bottom] - a[.top]) / 2
                    }
            }
        }
    }
}

