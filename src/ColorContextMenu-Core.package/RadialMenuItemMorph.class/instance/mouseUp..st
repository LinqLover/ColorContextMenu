event handling
mouseUp: anEvent

	(self containsPoint: anEvent position) ifFalse: [
		^ self privateInteractionState: nil].
	
	self privateInteractionState: #hover.
	self doButtonAction.