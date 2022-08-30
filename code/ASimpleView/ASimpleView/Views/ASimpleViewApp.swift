//
//  ASimpleViewApp.swift
//  ASimpleView
//
//  Created by Zef Houssney on 8/29/22.
//

import SwiftUI

@main
struct ASimpleViewApp: App {
    var body: some Scene {
        WindowGroup {
            PlayerView(player: AudioPlayer())
        }
    }
}
