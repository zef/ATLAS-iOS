//
//  Shell.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation

struct Shell {
    @discardableResult
    static func execute(_ command: String) -> String {
        let task = Process()
        let pipe = Pipe()

        task.standardOutput = pipe
        task.standardError = pipe
        task.arguments = ["-c", command]
        task.launchPath = "/bin/zsh"
        task.launch()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!

        return output
    }
}
