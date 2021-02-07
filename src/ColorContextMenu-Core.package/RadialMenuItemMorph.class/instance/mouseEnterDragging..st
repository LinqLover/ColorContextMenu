event handling
mouseEnterDragging: anEvent

	self takeMouseFocus: anEvent.
	self privateInteractionState: #active.