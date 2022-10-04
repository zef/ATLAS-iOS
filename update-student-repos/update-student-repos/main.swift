//
//  main.swift
//  update-student-repos
//
//  Created by Zef Houssney on 9/12/22.
//

import Foundation

let studentProjectDirectory = "../StudentProjects"

let filename = "github_usernames.txt"
let url = URL(fileURLWithPath: filename)

guard let usernameText = try? String(contentsOf: url) else {
    print("Could not read file.")
    exit(1)
}

let usernames = usernameText.components(separatedBy: .whitespacesAndNewlines)
    .filter { !$0.isEmpty }

let users: [User] = usernames.map { User(username: $0) }

func updateClassRepos() {
    for user in users {
        user.classRepo.cloneOrUpdate()
    }
}

func updatePersonalRepos() {
//    for user in users {
//        for user.config?.repoNames
//    }
}

func combineDataForAssignment(named key: String) {
    for user in users { guard let config = user.config else { continue }
        print("\(config.name):")
        for url in config.assignment10 {
            print(url)
        }
        print("")
    }
}

updateClassRepos()
combineDataForAssignment(named: "10-ux-ui-criticism")



//let assignmentURLs = configFiles.reduce([String]()) { list, config in
//    var list = list
//    print(config.assignment11)
//    list.append(contentsOf: config.assignment11)
//    return list
//}
//
//print("Assignment URLs:", assignmentURLs)

