event handling
mouseEnterDragging: anEvent

	| wasActive |
	self takeMouseFocus: anEvent.
	
	wasActive := self interactionState = #active.
	self interactionState: #active.
	
	wasActive ifFalse: [
		self closeCompetingSubmenus.
		self hasSubMenu ifTrue: [
			self doButtonAction].
		
		self interactionState: #active].