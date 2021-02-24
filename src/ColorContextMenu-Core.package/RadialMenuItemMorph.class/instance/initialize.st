initialization
initialize

	super initialize.
	
	self addMorph: (labelMorph := self basicLabelMorph).
	self privateInteractionState: nil.
	self borderWidth: self defaultBorderWidth.