halos and balloon help
hasHalo: aBoolean

	super hasHalo: aBoolean.
	aBoolean ifTrue: [
		self wantsToStayUp: true].