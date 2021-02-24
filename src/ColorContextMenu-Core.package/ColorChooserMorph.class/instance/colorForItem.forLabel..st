menus
colorForItem: item forLabel: label

	| symbol |
	symbol := label asSymbol.
	
	symbol = #darker ifTrue: [ ^ Color veryVeryDarkGray ].
	symbol = #lighter ifTrue: [ ^ Color lightGray ].
	symbol = #random ifTrue: [ ^ nil ].
	
	(Color class canUnderstand: symbol) ifTrue: [ ^ (Color perform: symbol) mixed: 0.6 with: item defaultBaseColor ].
	
	^ nil