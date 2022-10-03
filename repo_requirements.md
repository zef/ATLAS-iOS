---
title: ATLAS — Mobile App Development
---

## Class Repo Requirements

It's important that all the details for this

1. Create an git repo that lives on GitHub with the project name `ATLAS-iOS-Fall-22`
2. Your GitHub username must be in my [`github_usernames.txt`](https://github.com/zef/ATLAS-iOS/blob/main/github_usernames.txt) file. Send me a pull request if it is not.


## Your Class Repo:

- Must have a file called `config.yml` at the root.
- Must not contain `.DS_Store` files in git. Please [remove them](https://stackoverflow.com/questions/107701/how-can-i-remove-ds-store-files-from-a-git-repository). I recommend ignoring these files at a global level on your machine, but you can also add it to your project's `.gitignore` file.


## Your `config.yml` file:

The following data should be included in your YAML file.

It's important to match correct YAML syntax so it is a valid yaml file that can be
parsed. You can use [YAML Lint](http://www.yamllint.com) to make sure it is
valid.

```yaml
name: Zef Houssney

# Provide the name for all of your other GitHub repos that relate to this class.
# If I substitute your username and the repo name in a GitHub URL like this:
#    `https://github.com/YOUR_GITHUB_USERNAME/REPO_NAME`
# I should find your repository.
repo_names:
  - Measurements
  - StarWars

# Provide any URLs for your Videos
10-ux-ui-criticism:
  - http://
  - http://

# Provide any URLs for your Data Models assignment
11-models-from-data:
  - https://github.com/zef/StarWars/blob/main/StarWars/Person.swift#L16
```

- Keys must be followed by a `: `, including a space after the colon.
- All lines that start with `#` are comments and are ignored.
- Arrays items start with a `-` and should be indented within their key.

