# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).

## Next release

### Added

* Check for ScopedTypeVariables being enabled when using withStatic.

### Changed

## [0.3.5] - 2018-02-01

### Added

* A static class hierarchy (#12).
* Continuous integration with CircleCI.
* Generation of more complex closures for quickcheck properties (#9).
* Closure duplication (comonadic operation).

### Changed

* Prevented warnings about redundant 'Typeable (Dict A)' constraints
  when A has no type variables in the code generated by 'withStatic'.
* Have 'withStatic' produce correct code when class instances involve
  type families (#10).

## Removed

* Bogus property "equal closures have equal serializations".