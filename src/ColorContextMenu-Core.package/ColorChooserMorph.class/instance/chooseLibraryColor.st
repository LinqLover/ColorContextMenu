actions
chooseLibraryColor

	| selectedColor |
	selectedColor := Project uiManager
		chooseFrom: (self libraryColors collect: [:color | color asHTMLColor])
		values: self libraryColors
		title: 'Browse color library'.
	selectedColor ifNil: [^ self].
	
	self color: selectedColor.