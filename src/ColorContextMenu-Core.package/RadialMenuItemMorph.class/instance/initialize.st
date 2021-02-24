initialization
initialize

	super initialize.
	
	hasSubMenu := false.
	self addMorph: (labelMorph := self basicLabelMorph).
	self privateInteractionState: nil.