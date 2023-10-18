//
//  testing.swift
//  MacroChallengeGroup4
//
//  Created by Yohan Wijaya on 19/10/23.
//

import SwiftUI

struct testing: View {
    @StateObject var service = BluetoothService()
    var body: some View {
        Text("\(service.AccelValue)")
    }
}

#Preview {
    testing()
}
