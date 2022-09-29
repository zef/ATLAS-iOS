//
//  Repo.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation
import Yams

struct Config: Codable {
    var name: String
    var repo_names: [String]
    var assignment10: [String]
//    var assignment11: [String]

    enum CodingKeys: String, CodingKey {
        case name
        case repo_names
        case assignment10 = "10-ux-ui-criticism"
//        case assignment11 = "11-models-from-data"
    }

    init?(path: String) {
//        FileManager.default
        guard let yaml = try? String(contentsOf: URL(fileURLWithPath: path), encoding: .utf8) else {
            print("no file found")
            return nil
        }

        do {
            let decoder = YAMLDecoder()
            let decoded = try decoder.decode(Config.self, from: yaml)
            print("Decoded object!", decoded)
        } catch let error {
            print("Could not decode yaml", error)
        }

        // I can't get the YAMS library to build, so going to
        // quckly parse it myself
        print(yaml)
//        for line in yaml.split(separator: "\n") {
//            if let name = parameter(named: "name", from: String(line)) {
//                self.name = name
//            }
//            if let project = parameter(named: "personal_project", from: String(line)) {
//                self.personal_project = project
//            }
//        }
        return nil
    }
}

struct User {
    let username: String

    var targetPath: String {
        "\(studentProjectDirectory)/\(username)"
    }

    var classRepo: Repo {
        Repo(name: Repo.classRepoName, user: self)
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
    var targetPath: String {
        "\(user.targetPath)/\(name)"
    }
    var configPath: String {
        "\(targetPath)/config.yml"
    }

    var existsOnDisk: Bool {
        manager.fileExists(atPath: targetPath)
    }

//    var config: Config {
//
//    }

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
