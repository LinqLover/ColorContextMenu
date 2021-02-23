initialization
initialize

	super initialize.
	
	self privateInteractionState: nil.
	self borderWidth: self defaultBorderWidth.
	
	self addMorph: (labelMorph := self basicLabelMorph).
	labelMorph color: Color white.