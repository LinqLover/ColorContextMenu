styling
interactionState: aSymbol

	(self interactionState = #active and: [self subMenus notEmpty])
		ifTrue: [^ self].
	
	^ self privateInteractionState: aSymbol