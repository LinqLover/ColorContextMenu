accessing
setBaseColorForLabel: aSymbol

	| rawColor |
	
	rawColor := self defaultBaseColor.
	(Color class canUnderstand: aSymbol) ifTrue: [ rawColor := Color perform: aSymbol ].
	
	aSymbol = #darker ifTrue: [ rawColor := Color veryVeryDarkGray ].
	aSymbol = #lighter ifTrue: [ rawColor := Color lightGray ].
	aSymbol = #random ifTrue: [ rawColor := self defaultBaseColor ].

	self baseColor: (rawColor mixed: 0.6 with: self defaultBaseColor).
	
	self privateInteractionState: nil.
	
