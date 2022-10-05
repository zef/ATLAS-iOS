//
//  Config.swift
//  update-student-repos
//
//  Created by Zef Houssney on 10/3/22.
//

import Foundation
import Yams

struct Config {
    var username: String
    var data: [String: Any]

    var name: String
    var repoNames: [String]

    init?(path: String, username: String) {
        self.username = username
//        print("\nParsing config file for \(username)")

        guard let yaml = try? String(contentsOf: URL(fileURLWithPath: path), encoding: .utf8) else {
            print("No yaml file found for \(username)")
            return nil
        }

        guard let data = try? Yams.load(yaml: yaml) as? [String: Any] else {
            print("Could not decode yaml for \(username):")
            print(yaml)
            return nil
        }

        self.data = data
//        print("data for", username)
//        print(data)

//        print("10: \(data["10-ux-ui-criticism"])")

        self.name = data["name"] as? String ?? username
        self.repoNames = data["repo_names"] as? [String] ?? []
    }
}


