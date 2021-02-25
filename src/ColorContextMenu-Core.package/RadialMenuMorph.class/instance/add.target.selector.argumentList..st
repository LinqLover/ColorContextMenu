construction - compatibility
add: aString target: target selector: aSymbol argumentList: argumentList

	^ self add: aString target: target action: [
		target perform: aSymbol withEnoughArguments: argumentList]