accessing
rootMenu

	^ (self owner isKindOf: RadialMenuItemMorph)
		ifTrue: [self owner rootMenu]
		ifFalse: [self]