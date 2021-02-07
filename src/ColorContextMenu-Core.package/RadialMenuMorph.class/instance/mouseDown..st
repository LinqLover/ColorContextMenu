event handling
mouseDown: anEvent

	(self wantsToStayUp not and: [(self containsPoint: anEvent position) not]) ifTrue: [
		^ self delete].
	anEvent wasHandled: false.