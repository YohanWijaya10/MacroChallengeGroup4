//
//  MacroChallengeGroup4App.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI

@main
struct MacroChallengeGroup4App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let landscapeOrientation = UIInterfaceOrientation.landscapeLeft.rawValue
                    UIDevice.current.setValue(landscapeOrientation, forKey: "orientation") //ini kemana ya kok ilang
                }
        }
    }
}
