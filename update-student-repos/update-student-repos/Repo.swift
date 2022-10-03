//
//  Repo.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation
import Yams

struct Config {
    var username: String
    var data: [String: Any]

    var name: String
    var repoNames: [String]
    var assignment10: [String]
    var assignment11: [String]

    init?(path: String, username: String) {
        self.username = username

        guard let yaml = try? String(contentsOf: URL(fileURLWithPath: path), encoding: .utf8) else {
            print("No yaml file found at \(path)")
            return nil
        }

        guard let data = try? Yams.load(yaml: yaml) as? [String: Any] else {
            print("Could not decode yaml for \(username).")
            print(yaml)
            return nil
        }

        self.data = data
        print("data for", username)
        print(data)

        self.name = data["name"] as? String ?? username
        self.repoNames = data["repo_names"] as? [String] ?? []
        self.assignment10 = data["10-ux-ui-criticism"] as? [String] ?? []
        self.assignment11 = data["11-models-from-data"] as? [String] ?? []
    }
}

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
