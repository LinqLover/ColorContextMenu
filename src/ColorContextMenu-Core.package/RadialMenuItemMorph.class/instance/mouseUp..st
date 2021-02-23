event handling
mouseUp: anEvent

	(self containsPoint: anEvent position) ifFalse: [
		^ self interactionState: nil].
	
	self interactionState: #hover.
	self hasSubMenu ifFalse: [
		self doButtonAction].