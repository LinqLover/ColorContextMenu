drawing
drawOn: aCanvas

	aCanvas
		fillRectangle: self innerBounds
		fillStyle: (InfiniteForm with: self hatchForm).
	super drawOn: aCanvas.