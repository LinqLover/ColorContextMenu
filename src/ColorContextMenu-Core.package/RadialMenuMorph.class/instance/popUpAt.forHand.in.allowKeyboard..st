control
popUpAt: aPoint forHand: hand in: world allowKeyboard: allowKeyboard

	world submorphs
		select: [:each | (each isKindOf: RadialMenuMorph)
			and: [each wantsToStayUp not]]
		thenDo: [:menu | menu delete].
	
	self center: aPoint.
	world addMorphFront: self.
	
	hand
		newMouseFocus: self;
		showTemporaryCursor: nil.
	allowKeyboard ifTrue: [
		originalFocusHolder := hand keyboardFocus.
		hand newKeyboardFocus: self].