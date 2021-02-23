accessing
ownerMenu

	^ (self owner isKindOf: RadialMenuMorph)
		ifTrue: [self owner]
		ifFalse: [nil]