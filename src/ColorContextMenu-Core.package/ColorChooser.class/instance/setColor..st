accessing
setColor: aColor

	color := aColor.
	self changed: #color with: aColor.