accessing
ownerMenu

	^ (self owner notNil and: [self owner isRadialMenuMorph])
		ifTrue: [self owner]
		ifFalse: [nil]