//
//  MacroChallengeGroup4App.swift
//  MacroChallengeGroup4
//
//  Created by Brian Putrantio on 12/10/23.
//

import SwiftUI
import CoreBluetooth


@main
struct Macro_coba1App: App {
    var body: some Scene {
        WindowGroup {
            ConnectingView().onAppear {
                let landscapeOrientation = UIInterfaceOrientation.landscapeRight.rawValue
                UIDevice.current.setValue(landscapeOrientation, forKey: "orientation")
            }
        }
    }
}



