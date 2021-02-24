accessing
rootMenu

	^ self owner isRadialMenuItemMorph
		ifTrue: [self owner rootMenu]
		ifFalse: [self]