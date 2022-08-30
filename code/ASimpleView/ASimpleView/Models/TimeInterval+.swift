//
//  TimeInterval+.swift
//  AudioMessages
//
//  Created by Zef Houssney on 3/17/22.
//

import Foundation

extension TimeInterval {
    // might be nice to remove the inital padded 0 if it's there, but maybe later
    // we still want .pad to be on because of the middle and last values
    var timeString: String {
        timeString()
    }

    func timeString(pad: Bool = true) -> String {
        let formatter = DateComponentsFormatter()
        formatter.zeroFormattingBehavior = pad ? .pad : .dropLeading
        formatter.unitsStyle = .positional

        if self >= 60*60 {
            formatter.allowedUnits = [.hour, .minute, .second]
        } else {
            formatter.allowedUnits = [.minute, .second]
        }
        guard !self.isNaN, let formatted = formatter.string(from: self) else { return "00:00" }
        return formatted
    }
}
