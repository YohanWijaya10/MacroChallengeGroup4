//
//  TestingView.swift
//  Macro_coba1
//
//  Created by Brian Putrantio on 14/10/23.
//

import Foundation
import SwiftUI

struct TestingView: View {
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            HStack {
                Image("chair")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 300)
                
                VStack{
                    HStack{
                        Text("Sit Properly")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("in the chair")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                    Button(action: {
                        
                    }) {
                        Text("Next")
                            .font(.headline)
                            .padding()
                            .background(Color.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            Spacer()
        }
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
