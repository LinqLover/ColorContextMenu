menus
colorForLabel: label

	| symbol |
	symbol := label asSymbol.
	
	symbol = #darker ifTrue: [ ^ Color veryVeryDarkGray ].
	symbol = #lighter ifTrue: [ ^ Color lightGray ].
	symbol = #random ifTrue: [ ^ nil ].
	
	(Color class canUnderstand: symbol) ifTrue: [ ^ Color perform: symbol ].
	
	^ nil