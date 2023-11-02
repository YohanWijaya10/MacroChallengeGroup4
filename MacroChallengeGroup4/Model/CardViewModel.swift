//
//  CardViewModel.swift
//  MacroChallengeGroup4
//
//  Created by Timothyus Kevin Dewanto on 30/10/23.
//

import SwiftUI

struct CardViewModel: View {
    
    var cardTitle: String
    var cardImage: String
    var cardGenre: String
    
    var body: some View {
        HStack{
            Image(cardImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            
            VStack{
                Text(cardTitle)
                Text(cardGenre)
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    CardViewModel(cardTitle: "Hello World", cardImage: "chair", cardGenre: "Rock")
}
