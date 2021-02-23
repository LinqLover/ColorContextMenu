event handling
mouseDown: anEvent

	(self wantsToStayUp or: [self fullContainsPoint: anEvent position]) ifFalse: [
		^ self delete].
	
	^ super mouseDown: anEvent