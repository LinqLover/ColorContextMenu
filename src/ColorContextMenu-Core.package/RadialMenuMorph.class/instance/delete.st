submorphs-add/remove
delete

	super delete.
	self wantsToStayUp ifTrue: [
		self currentHand newKeyboardFocus: originalFocusHolder].