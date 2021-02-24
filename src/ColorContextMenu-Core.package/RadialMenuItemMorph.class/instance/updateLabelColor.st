updating
updateLabelColor

	self color luminance > 0.5 
		ifTrue: [self labelColor: Color black]
		ifFalse: [self labelColor: Color white]