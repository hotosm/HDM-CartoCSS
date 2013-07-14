# Contributing

First of all: thanks for contributing!

## Code conventions

* Always specify zoom levels as either >= or < . Don't use = or =< or >
* Open curly braces on the same line, and close on an empty line.
* Two space indents. No tabs.
* space after : but no before

## Commits policy

* commits must be atomic: just one consistent change per commit
* when possible, refer to an issue on the commit message, for example adding
  `(cf #xx)` at the end of the commit message
* never commit environnement related changes (like layer file path or database
  connection settings in the .mml)

## Submitting a pull request

* when it makes sense, add two screenshots before/after to hightlight the changes
* keep pull request as simple as possible