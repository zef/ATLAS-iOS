# ATLAS iOS

These are my course materials for teaching the Mobile App Development course at
[The University of Colorado's ATLAS Institute](https://www.colorado.edu/atlas/).

## Slides

The `slides` folder contains markdown that produces all of the presentations
using [Marp](https://marp.app).

The [`html` folder](/slides/html/) holds the rendered slides, which can be downloaded and opened
up in a browser window from your own computer.

A Ruby Rakefile is used to organize the shell commands needed for various tasks.

## Syllabus

The `syllabus` folder contains files related to the syllabus, which is
[here](/syllabus/syllabus.html).

[pandoc](https://pandoc.org) is used to generate an html file of the syllabus,
as well as a PDF version, which isn't very polished and is probably not
necessary. I might delete that later.

### PDF Syllabus Generation

I had to install `pdflatex` with `brew install mactex` and then
[manually add](https://github.com/zef/dotfiles/commit/a5aa7a704ab1563d97aba5b4d381a094ab4ae0c8)
the path to my environment to generate the PDF.

[I'm using this template for the design.](https://github.com/Wandmalfarbe/pandoc-latex-template)

