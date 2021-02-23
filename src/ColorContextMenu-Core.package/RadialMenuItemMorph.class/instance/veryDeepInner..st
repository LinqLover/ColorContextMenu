copying
veryDeepInner: deepCopier

	target ifNil: [target := self target].
	
	super veryDeepInner: deepCopier.
	
	self closeSubmenus.
	allButtons := nil. "Cache"
	interactionState := nil. "Cache"