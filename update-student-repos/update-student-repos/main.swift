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

func updateAllRepos() {
    for user in users {
        user.classRepo.cloneOrUpdate()
        guard let config = user.config else { continue }
        for name in config.repoNames {
            let repo = Repo(name: name, user: user)
            repo.cloneOrUpdate()
        }
    }
}

func combineDataForAssignment(named key: String) {
    for user in users {
        guard let config = user.config else { continue }
        print("\(config.name):")
        guard let lines = config.data[key] as? [String] else { continue }
        for url in lines {
            print(url)
        }
        print("")
    }
}

updateAllRepos()
//updateClassRepos()
combineDataForAssignment(named: "10-ux-ui-criticism")
//combineDataForAssignment(named: "11-models-from-data")



//let assignmentURLs = configFiles.reduce([String]()) { list, config in
//    var list = list
//    print(config.assignment11)
//    list.append(contentsOf: config.assignment11)
//    return list
//}
//
//print("Assignment URLs:", assignmentURLs)

