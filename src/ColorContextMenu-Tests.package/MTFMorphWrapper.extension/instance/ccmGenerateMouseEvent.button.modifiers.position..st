*ColorContextMenu-Tests-private-event-generation
ccmGenerateMouseEvent: aSymbol button: aMouseButton modifiers: modifiersValue position: aPoint
	"aSymbol can be: #mouseMove, #mouseUp, #mouseDown"
	
	^MouseButtonEvent new
		setType: aSymbol
		position: aPoint
		which: 0
		buttons: aMouseButton + modifiersValue
		hand: self hand
		stamp: Time millisecondClockValue