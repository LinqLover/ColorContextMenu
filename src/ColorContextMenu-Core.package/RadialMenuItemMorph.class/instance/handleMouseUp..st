events-processing
handleMouseUp: anEvent

	super handleMouseUp: anEvent.
	
	(self valueOfProperty: #priorMouseFocus) ifNotNil: [:priorFocus |
		anEvent hand newMouseFocus: priorFocus].