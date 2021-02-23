asserting
shouldChangeColor: aBlock

	| newColor oldColor |
	oldColor := chooser model color.
	
	aBlock value.
	newColor := chooser model color.
	
	self deny: oldColor equals: newColor.