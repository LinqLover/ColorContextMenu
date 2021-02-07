updating
update: aSymbol with: anObject

	aSymbol = #color ifTrue: [
		self color: anObject].
	aSymbol = #menuMode ifTrue: [
		self menuMode: anObject].
	
	^ super update: aSymbol with: anObject