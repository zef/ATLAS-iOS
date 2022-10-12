---
title: Vocabulary
---

## Defensive Programming

Writing code so that all potential errors are handled, and aren't able to
negatively impact the user experience.

## Dead Code

Code that exists in your codebase, but is not used or exercised by any code
paths.

## DRY

Don't Repeat Yourself

When you need to use the same logic in multiple places, instead of copying and
pasting the code, put it in a function that can be used in multiple places.

## API

"Application Programming Interface"

Two different things are commonly referred to as APIs:

1) The code interfaces that are used in a programming environment. This includes
the libraries, classes, functions, and capabilities that make up the frameworks
that we use to build software.

2) A system for retrieving data from a web server. This is usually making a web
request and receiving back structured data.


## Persistence

The ability for software to store and read data.


## Refactoring

Reworking code without changing behavior.


## Localization

Translating an application's strings into other languages.

Localization is closely related to Internationalization, which is the process of
preparing an app for use in other languages and regions.

Internationalization is commonly abbreviated as `I18N`.


## Mutability

The ability for an object to be changed.

In Swift:

```swift
let number = 10
// number is immutable and cannot be changed

var number = 10
// number is mutable and can be changed
```

## Dotfiles

"Invisible" files that help configure developer tools and other software.
