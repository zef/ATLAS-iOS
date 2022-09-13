import Foundation

let filename = "/Users/zef/code/ATLAS-iOS/github_usernames.txt"
let url = URL(fileURLWithPath: filename)

guard let usernames = try? String(contentsOf: url) else {
    exit(1)
}

let users = usernames.components(separatedBy: .whitespacesAndNewlines)
    .filter({ !$0.isEmpty })

print(users)

