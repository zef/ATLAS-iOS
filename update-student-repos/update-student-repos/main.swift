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

guard let usernames = try? String(contentsOf: url) else {
    print("Could not read file.")
    exit(1)
}

let users = usernames.components(separatedBy: .whitespacesAndNewlines)
    .filter { !$0.isEmpty }

for username in users {
    let user = User(username: username)
    user.classRepo.cloneOrUpdate()
//    let _ = Config(path: repo.configPath)
//    repo.cloneOrUpdate()
}
