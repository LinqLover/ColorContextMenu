event handling
mouseDown: anEvent

	self interactionState: #active.
	
	self closeCompetingSubmenus.
	self hasSubMenu ifTrue: [
		self doButtonAction].
	
	self interactionState: #active.