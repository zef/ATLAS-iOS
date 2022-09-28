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
    var personal_project: String

    init?(path: String) {
//        FileManager.default
        guard let yaml = try? String(contentsOf: URL(fileURLWithPath: path), encoding: .utf8) else {
            print("no file found")
            return nil
        }

        func parameter(named name: String, from line: String) -> String? {
            if line.contains(name), let value = line.split(separator: ":").last {
                return value.trimmingCharacters(in: .whitespacesAndNewlines)
            }
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
