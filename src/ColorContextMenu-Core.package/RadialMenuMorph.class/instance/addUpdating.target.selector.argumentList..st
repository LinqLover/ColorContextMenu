construction - compatibility
addUpdating: update target: target selector: aSymbol argumentList: argumentList
	"Compatibility with MenuMorph. The receiver does not actually support updating items at the moment."

	^ self add: (update ccmValueWithEnoughArguments: (argumentList copyWithFirst: target)) target: target action: [
		target perform: aSymbol withEnoughArguments: argumentList]