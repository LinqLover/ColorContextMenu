updating
update: aSymbol with: anObject

	aSymbol = #color ifTrue: [
		self color: anObject].
	
	^ super update: aSymbol with: anObject