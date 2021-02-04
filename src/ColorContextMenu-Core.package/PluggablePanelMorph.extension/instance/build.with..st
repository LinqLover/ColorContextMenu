*ColorContextMenu-Core-compatibility-hot reload
build: buildable with: builder

	| buildings block |
	buildings := model
		perform: buildable
		withEnoughArguments: {builder}.
	block := [:building |
		builder build: (building isSymbol
			ifTrue: [self build: building with: builder]
			ifFalse: [building])].
	^ (buildings isCollection and: [buildings isSymbol not])
		ifTrue: [buildings asOrderedCollection collect: block]
		ifFalse: [block value: buildings]