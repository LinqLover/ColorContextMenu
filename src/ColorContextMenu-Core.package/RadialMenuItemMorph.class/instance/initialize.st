initialization
initialize

	super initialize.
	
	self privateInteractionState: nil.
	self borderWidth: self defaultBorderWidth.
	
	self addMorph: (labelMorph := TextMorph new lock).
	labelMorph color: Color white.