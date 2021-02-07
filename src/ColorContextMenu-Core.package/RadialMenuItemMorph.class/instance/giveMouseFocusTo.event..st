event handling
giveMouseFocusTo: aMorph event: anEvent

	aMorph setProperty: #priorMouseFocus toValue: (
		self valueOfProperty: #priorMouseFocus).
	self removeProperty: #priorMouseFocus.
	aMorph takeMouseFocus: anEvent.