event handling
mouseUp: anEvent

	self wantsToStayUp ifFalse: [
		anEvent hand newMouseFocus: self].