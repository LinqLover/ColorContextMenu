accessing
ownerMenu

	^ self owner isRadialMenuMorph
		ifTrue: [self owner]
		ifFalse: [nil]