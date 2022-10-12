<!--
_class: lead
_header: '![w:100](images/atlas.svg) <div style="float:right; margin-top:0px; margin-left: 0.3em;">4120/5120</div>'
_footer: Class 15
-->

<style>
section.lead h2 {
  font-size: 1.25rem;
  color: #F05138;
}

section.lead h4 {
  margin-top: -8px;
  font-weight: normal;
}

section.end h1 {
  color: #F05138;
}

</style>

## APIs, Continued
#### October 12, 2022

---

### Resources from Last Class

- [Network Link Conditioner](https://nshipster.com/network-link-conditioner/) on Mac and iOS
- [Proxyman](https://proxyman.io)
- [Charles Proxy](https://www.charlesproxy.com) (cross-platform)
- [Wireshark](https://www.wireshark.org) (free, open source, cross-platform)
- [Paw](https://paw.cloud)

---

### Don't Put your Keys in Git

https://www.bleepingcomputer.com/news/security/toyota-discloses-data-leak-after-access-key-exposed-on-github/

---

### Programming is Hard

https://twitter.com/kevinnaughtonjr/status/1573042964804386819?s=46&t=ukfyheYe5y1V-xiB3f67Dw

https://twitter.com/jarredsumner/status/1567411663493791744?s=46&t=8XOWGNr78LqP9g6JZRd_jA

https://twitter.com/aaronvegh/status/1580054439637180416

---

## Refactoring: StarWars API

---

### Assertions and Preconditions

* Sometimes there are codepaths that you don't expect to ever hit. How should you
deal with this?


* Assertions will crash your app in development, and are useful for verifying
your assumptions.
  * `assertionFailure("This shouldn't happen.")`
  * `assert(list.count == 1, "Only one object expected in the list.")`

* Preconditions will crash your app in production, should only be used in
drastic circumstances.
  * `preconditionFailure("Massive error, app cannot continue.")`
  * `precondition(error == nil, "This is bad, let's just crash.")`

---

### New Vocabulary

* Defensive Coding
* Dead Code

