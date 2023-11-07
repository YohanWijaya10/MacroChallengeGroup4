//
//  MainCardViewModel.swift
//  MacroChallengeGroup4
//
//  Created by Timothyus Kevin Dewanto on 30/10/23.
//

import SwiftUI

struct MainCardViewModel: View {
    
    var title: String
    var cardImage: String
    
    var body: some View {
        HStack {
            Image(cardImage)
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .frame(width: 330, height: 60)
        .padding()
        .background(Color("Pale Blue").opacity(0.5))
        .cornerRadius(10)

    }
}

#Preview {
    MainCardViewModel(title: "Hallo", cardImage: "globe")
}
