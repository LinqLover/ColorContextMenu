# ColorContextMenu

![smalltalkCI](https://github.com/LinqLover/ColorContextMenu/workflows/smalltalkCI/badge.svg)

An example radial menu implementation for Squeak/Smalltalk.

## Development

Clone the repository using [Squot](https://github.com/hpi-swa/Squot).

## Installation

```smalltalk
Metacello new
	baseline: 'ColorContextMenu';
	githubUser: 'LinqLover' project: 'ColorContextMenu' commitish: 'master' path: 'src';
	load.
```

## Usage

```smalltalk
ColorChooser open.
```
