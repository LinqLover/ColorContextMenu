initialization
initialize

	super initialize.
	
	hasSubMenu := false.
	self privateInteractionState: nil.
	self borderWidth: self defaultBorderWidth.
	
	self addMorph: (labelMorph := self basicLabelMorph).
	labelMorph color: Color white.