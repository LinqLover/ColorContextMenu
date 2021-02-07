geometry - misc
worldBoundsForHalo

	| r |
	Preferences haloEnclosesFullBounds ifTrue: [
		^ super worldBoundsForHalo].
	
	r := self bounds: self effectiveBounds in: self world.
	^ Preferences showBoundsInHalo
		ifTrue: [r outsetBy: self borderCorrectionOffset]
		ifFalse: [r]