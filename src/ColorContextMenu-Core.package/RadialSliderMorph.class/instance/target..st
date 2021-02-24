accessing
target: anObject

	target := anObject.
	
	self getter ifNotNil: [self updateValue].