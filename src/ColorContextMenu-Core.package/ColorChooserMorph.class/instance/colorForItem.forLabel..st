menus
colorForItem: item forLabel: label

	| symbol |
	symbol := label asSymbol.
	
	symbol = #darker ifTrue: [ ^ Color veryVeryDarkGray ].
	symbol = #lighter ifTrue: [ ^ Color lightGray ].
	symbol = #random ifTrue: [ ^ nil ].
	
	(Color class canUnderstand: symbol) ifTrue: [
		| customColor |
		customColor := Color perform: symbol.
		item isRadialMenuItemMorph ifTrue: [
			customColor := customColor mixed: 0.6 with: item defaultBaseColor].
		^ customColor].
	
	^ nil