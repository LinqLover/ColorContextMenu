actions
saveLibraryColor: aColor

	libraryColors
		remove: aColor ifAbsent: [];
		addFirst: aColor.
	self maximumLibrarySize ifNotNil: [:max |
		| excess |
		(excess := libraryColors size - max) > 0 ifTrue: [
			libraryColors removeLast: excess]].
	
	self triggerEvent: #libraryChanged.