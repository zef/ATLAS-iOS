---
title: ATLAS — Mobile App Development
---

### [Syllabus](syllabus.html) • [GitHub Repo](https://github.com/zef/ATLAS-iOS) • [Vocabulary](vocabulary.html)

### [Repo Requirements](repo_requirements.html)

[zef.houssney@colorado.edu](mailto:zef.houssney@colorado.edu)

<hr />
## 14 — APIs and Web Requests

2022-10-10, Monday

[Slides](4-APIs.html)

### Resources


- [Simple request](https://www.hackingwithswift.com/read/7/3/parsing-json-using-the-codable-protocol) with `Data(contentsOf: url)`
- More in-depth on [Swift Web Requests](https://cocoacasts.com/networking-fundamentals-how-to-make-an-http-request-in-swift) with `URLSession`

- [Async/Await](https://developer.apple.com/videos/play/wwdc2021/10132) WWDC Video.
- [Async/Await](https://www.avanderlee.com/swift/async-await/) blog post.


<hr />
## 13 — UI Critique and some Refactoring.

2022-10-05, Wednesday

Continuing some UI critique that we didn't finish on Monday.

## [Recording of Class](https://youtu.be/UidDom1EgeU)

### Resources

- Recent [codable video tutorial](https://www.youtube.com/watch?v=H9mt8WjpZgM)

### Assignment: Project Check-In

**Due Wednesday, October 12**

Create an issue in your Class Repo `ATLAS-iOS-Fall-22` in which you will do the
following:

- Upload screenshots of screens you've implemented
- Add a checklist of next-steps to continue development
- Write a bit about what you've been learning. Feel free to answer any of the
following:
  - Is anything particularly exciting to you about what you've accomplished so
  far?
  - Do you have any specific questions about how to proceed?
  - Has your app idea and plan changed? How?
  - What have been the most challenging aspects so far?

<hr />
## 12 — UI Critique

2022-10-03, Monday

We watched UI/UX critique videos.

## Recording of Class

- [Part One](https://youtu.be/HNQOiRYAA4Y)
- [Part Two](https://youtu.be/AOxLT4Ib4is)

- Check out Xcode Shortcuts, especially how to indent code:
  - [Key Combiner](https://keycombiner.com/collections/xcode/)
  - [Shortcuts PDF](https://swifteducation.github.io/assets/pdfs/XcodeKeyboardShortcuts.pdf)
  - Indent a selected block of code with `⌃-I`

<hr />
## 11 — Models from Data

2022-09-28, Wednesday

## Recording of Class

- [Part One](https://www.youtube.com/watch?v=0XVq2jcj6rg)
- [Part Two](https://www.youtube.com/watch?v=UP5v9pDCb-M)

### Other Resources

- [Up Ahead](https://twitter.com/danielmgauthier/status/1575107017294827520) app
- [Star Wars App Code](https://github.com/zef/StarWars)
- [Star Wars API](https://swapi.dev)
- [See this GitHub issue](https://github.com/zef/ATLAS-iOS/issues/22) for the links we used in class.

### Assignment — `11-models-from-data`

**Due Monday, October 3**

- Write some code that takes a data source and creates Model objects out of it.
- This code can be in your project app, or can be isolated sample code.
- Add the link to the code on GitHub to with the key `11-models-from-data` to
your config file, as specified in [Repo Requirements](repo_requirements.html).


<hr />
## 10 — Feedback

2022-09-26, Monday

- [Slides](10-Feedback.html)
- [On Giving and Receiving Feedback](https://zef.studio/journal/feedback/)

### Assignment: UX/UI Criticism

**Due Monday, October 3**

1. **Identify a UI/UX problem or bug in any piece of software, but preferably a mobile app.**

Demonstrate the problem in a short video. Provide suggestions for improvement
and propose how it could be fixed.  Discuss trade-offs involved in different
approaches.

2. **Identify and share one delightful or thoughtful piece of interface design.**

Show it off in a short video. Explain why you like it or what's good about it.

3. **Upload the videos** to your personal project repo, or anywhere they can be
   accessed publicly — like a unlisted YouTube video. Post the links
   in your repo README.

4. **Be prepared to present** the videos to the class on Monday. You can say a
   few words in class, or otherwise make sure your video contains everything you
   want to share. You may be able to plug in your computer to the display if
   needed.


You can [record your screen on iOS](https://support.apple.com/en-us/HT207935)
from the Control Center. Note that if you long-press on the record button in
Control Center, you can choose whether to include the microphone in the recording or
not.


### Reading Assignment

- Read [Dark Patterns from neal.fun](https://neal.fun/dark-patterns/). Note that the examples are interactive.
- Read [Initialization](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html)


<hr />
## 09 — Live Coding

2022-09-21, Wednesday

### Assignment:

- Work on your student project. Commit some stuff.

### Reading Assignment

- Read [Subscripts](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html)
- Read [Inheritance](https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html)

- Human Interface Guidelines
  - Read [Typography](https://developer.apple.com/design/human-interface-guidelines/foundations/typography)

### Database Resources

- [UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults)
  - [Using Property Wrappers](https://www.jessesquires.com/blog/2021/03/26/a-better-approach-to-writing-a-userdefaults-property-wrapper/)
- [Core Data](https://developer.apple.com/documentation/coredata)
- [Realm](https://realm.io/realm-swift/)
- [Firebase](https://firebase.google.com/docs/ios/setup)
  - [Tutorial](https://www.raywenderlich.com/29394678-firebase-real-time-database-tutorial-for-ios)

<hr />
## 08 — Live Coding

2022-09-19, Monday

### Assignment:

- Work on your student project. Commit some stuff.

### Reading Assignment

- Read [Properties](https://docs.swift.org/swift-book/LanguageGuide/Properties.html)
- Read [Methods](https://docs.swift.org/swift-book/LanguageGuide/Methods.html)

- Human Interface Guidelines
  - Read [SF Symbols](https://developer.apple.com/design/human-interface-guidelines/foundations/sf-symbols)

    Check out WWDC Sessions for more.

<hr />
## 07 — App Lab

2022-09-14, Wednesday

### Assignment:

- Make a group of 3-4 students in which you will do code reviews and provide feedback for one another.

- Get up-to-date on the recent repo assignments:
  - Make sure I have your GitHub username in [`github_usernames.txt`](https://github.com/zef/ATLAS-iOS/blob/main/github_usernames.txt)
  - Make sure you have an app idea documented in your class repo at `ATLAS-iOS-Fall-22`.
  - Add the `config.yml` file as listed the Assignment from `06`
- Add `name: Your Name` to that config file, as well.
- Don't commit `.DS_Store` files to git. Please [remove them](https://stackoverflow.com/questions/107701/how-can-i-remove-ds-store-files-from-a-git-repository) I recommend ignoring it at a global
level on your machine, but you can also add it to your project's `.gitignore`
- Work on your app, committing and pushing changes as you go along.


### Reading Assignment

- Read [Enumerations](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)
- Read [Structures and Classes](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)

- Human Interface Guidelines
  - Read [Motion](https://developer.apple.com/design/human-interface-guidelines/foundations/motion)
  - Read [Right to left](https://developer.apple.com/design/human-interface-guidelines/foundations/right-to-left)

### Resources

- [ImageOptim](https://imageoptim.com/)

<hr />
## 06 — A New App

2022-09-12, Monday

### Assignment:


- Start building an application
- Create a new repo for your application and push it to GitHub
- Add a file called `config.yml` to your class repo (`ATLAS-iOS-Fall-22`)
  - add `personal_project: repo_name` to the file, where `repo_name` is your
  GitHub project name.


### Reading Assignment

- Read [Closures](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)

- Human Interface Guidelines
  - Read [Layout](https://developer.apple.com/design/human-interface-guidelines/foundations/layout)
  - Read [Materials](https://developer.apple.com/design/human-interface-guidelines/foundations/materials)


<!--
Questions:

- How do we avoid displaying our content under the keyboard, where it isn't
accessible?
- What kind of changes do we need to be able to respond to?
  - keyboard, device orientation, text size, iPad split screen

-->

<hr />

## 05 — Talking about Apps

2022-09-07, Wednesday

- [slides](05-TalkingAboutApps.html)

### Assignment:

[assignment slide](05-TalkingAboutApps.html#14)

<hr />
## 04 — Swift and Swift Playgrounds

2022-08-31, Wednesday

- [slides](04-SwiftPlaygrounds.html)

### Assignment:

- Read [Collection Types](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
- Read [Control Flow](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
- Read [Functions](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)
- Human Interface Guidelines
  - Read [Icons](https://developer.apple.com/design/human-interface-guidelines/foundations/icons)
  - Read [Images](https://developer.apple.com/design/human-interface-guidelines/foundations/images)
  - Read [Inclusion](https://developer.apple.com/design/human-interface-guidelines/foundations/inclusion)

<hr />
## 03 — A Simple View
2022-08-29, Monday

- [slides](03-ASimpleView.html) (not much here this week)
- [A Simple View project](https://github.com/zef/ATLAS-iOS/tree/main/code/ASimpleView/)

### Assignment:

- Read [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
- Read [Basic Operators](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/guidelines/overview)
  - Read [Branding](https://developer.apple.com/design/human-interface-guidelines/foundations/branding)
  - Read [Color](https://developer.apple.com/design/human-interface-guidelines/foundations/color)
  - Read [Dark Mode](https://developer.apple.com/design/human-interface-guidelines/foundations/dark-mode)


<hr />
## 02 — Making Plans
2022-08-24, Wednesday

- [slides](02-MakingPlans.html)

### Assignment:

- Read [A Swift Tour](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html).
- Read [Accessibility](https://developer.apple.com/design/human-interface-guidelines/foundations/accessibility)
- Read [App icons](https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons)

If you want, start messing around with Swift in the [Swift Playgrounds](https://www.apple.com/swift/playgrounds/)
app or in Xcode.

### Links and Resources

- [swift.org](https://www.swift.org)
  - "Getting Started" is about installation. You probably don't need this after
  installing Xcode.
  - The [Swift Book](https://docs.swift.org/swift-book/) section of the site is
  great.
  - We will be continuing on to [The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html) after today's assignment, "A Swift Tour".

- I mentioned the [Stanford SwiftUI course](https://cs193p.sites.stanford.edu) as an excellent resource for learning some fundamentals of Swift and SwiftUI.

<hr />

## 01 — Introduction

2022-08-22, Monday

- [slides](01-Introduction.html)

### Action Items:

- Download, Install and open [Xcode 14](https://developer.apple.com/xcode/). Install Command Line Tools when directed.
- Make sure you have an Apple ID and sign in to [Apple Developer](https://developer.apple.com) with it.
- Have a [GitHub](https://github.com) account.

[Xcode Releases](https://xcodereleases.com) is a handy site that organizes download links to versions of Xcode.

I mentioned the [Swift Playgrounds](https://www.apple.com/swift/playgrounds/)
app for iPad, but I forgot that there's a Mac version too! This is a great way
to get started with Swift, so check that out too.


