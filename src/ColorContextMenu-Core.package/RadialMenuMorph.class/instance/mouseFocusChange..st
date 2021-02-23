event handling
mouseFocusChange: aBoolean

	| focus |
	self rootMenu == self ifFalse: [^ self].
	aBoolean ifTrue: [^ self].
	
	focus := self currentHand mouseFocus.
	(focus isKindOf: RadialMenuItemMorph) ifTrue: [
		focus setProperty: #priorMouseFocus toValue: self].