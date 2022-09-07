//
//  AudioPlayer.swift
//  ASimpleView
//
//  Created by Zef Houssney on 8/29/22.
//

import AVFoundation


class AudioPlayer {
    var duration: TimeInterval
    var currentTime: TimeInterval

    var percentage: Float {
        Float(duration/currentTime)
    }

    init() {
        self.duration = 1000
        self.currentTime = 100
    }
}
