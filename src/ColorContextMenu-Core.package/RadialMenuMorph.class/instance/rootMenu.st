accessing
rootMenu

	^ (self owner notNil and: [self owner isRadialMenuItemMorph])
		ifTrue: [self owner rootMenu]
		ifFalse: [self]