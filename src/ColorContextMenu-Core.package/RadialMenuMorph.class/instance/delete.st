submorphs-add/remove
delete

	self closeSubmenus.
	
	super delete.
	
	self wantsToStayUp ifTrue: [
		self currentHand newKeyboardFocus: originalFocusHolder].