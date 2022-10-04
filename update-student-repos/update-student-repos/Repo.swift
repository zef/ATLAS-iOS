//
//  Repo.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation

struct User {
    let username: String

    var localPath: String {
        "\(studentProjectDirectory)/\(username)"
    }

    var classRepo: Repo {
        Repo(name: Repo.classRepoName, user: self)
    }

    var config: Config? {
        let path = "\(classRepo.localPath)/config.yml"
        return Config(path: path, username: username)
    }
}

struct Repo {
    private let manager = FileManager.default
    static var classRepoName = "ATLAS-iOS-Fall-22"

    let name: String
    let user: User

    var gitPath: String {
        "\(user.username)/\(name)"
    }
    var localPath: String {
        "\(user.localPath)/\(name)"
    }

    var existsOnDisk: Bool {
        manager.fileExists(atPath: localPath)
    }

    func pull() {
        print("Pulling for \(user)")
        let command = "git -C \(localPath) pull"
        print(Shell.execute(command))
    }

    func clone() {
        print("Cloning \(gitPath)")
        let command = "git clone git@github.com:\(gitPath).git \(localPath)"
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
