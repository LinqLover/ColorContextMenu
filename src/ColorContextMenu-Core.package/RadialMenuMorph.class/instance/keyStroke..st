event handling
keyStroke: anEvent

	anEvent keyCharacter = Character escape ifTrue: [^ self delete].
	
	^ self flash