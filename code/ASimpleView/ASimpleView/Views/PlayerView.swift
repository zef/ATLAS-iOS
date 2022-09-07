//
//  ContentView.swift
//  ASimpleView
//
//  Created by Zef Houssney on 8/29/22.
//

import SwiftUI

struct PlayerView: View {

    let player: AudioPlayer

    var body: some View {
        VStack {
            HStack {
                Text(player.currentTime.timeString)
                    .monospacedDigit()
                Spacer()
                Text("\(Int(player.percentage))% In Book")
                Spacer()
                Text(player.duration.timeString)
                    .monospacedDigit()
            }
            .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var player: AudioPlayer = {
        let player = AudioPlayer()
        player.currentTime = 247
        return player
    }()

    static var previews: some View {
        PlayerView(player: player)
    }
}
