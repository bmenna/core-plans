# alex

Alex is a tool for generating lexical analysers in Haskell. It takes a description of tokens based on regular expressions and generates a Haskell module containing code for scanning text efficiently. It is similar to the tool lex or flex for C/C++.

## Maintainers

* The Habitat Maintainers: <humans@habitat.sh>

## Type of Package

Binary package

## Usage

See https://www.haskell.org/alex

## Testing

To run tests of an already built package in a new studio instance:

```bash
source results/last_build.env
hab studio run "./alex/tests/test.sh $pkg_ident"
```
