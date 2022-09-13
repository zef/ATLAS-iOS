//
//  Repo.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation

struct Repo {
    private let manager = FileManager.default

    let user: String
    let repoName = "ATLAS-iOS-Fall-22"

    var gitPath: String {
        "\(user)/\(repoName)"
    }
    var targetPath: String {
        "\(targetDirectory)/\(user)"
    }

    var existsOnDisk: Bool {
        manager.fileExists(atPath: targetPath)
    }

    func pull() {
        print("Pulling for \(user)")
        let command = "git -C \(targetPath) pull"
        print(Shell.execute(command))
    }

    func clone() {
        print("Cloning \(gitPath)")
        let command = "git clone git@github.com:\(gitPath).git \(targetPath)"
        print(Shell.execute(command))
    }

    func cloneOrUpdate() {
        if existsOnDisk {
            pull()
        } else {
            clone()
        }
    }
}
