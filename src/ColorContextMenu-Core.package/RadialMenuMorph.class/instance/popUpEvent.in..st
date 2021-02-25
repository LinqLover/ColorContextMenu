control
popUpEvent: anEvent in: world

	| hand |
	hand := anEvent ifNotNil: [anEvent hand] ifNil: [self currentHand].
	^ self
		popUpAt: hand position
		forHand: hand
		in: world