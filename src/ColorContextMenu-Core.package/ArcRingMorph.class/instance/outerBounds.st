geometry - layout
outerBounds
	"Drawing of borders is a bit inaccurate, make sure to invalidate every trace."

	^ super outerBounds outsetBy: self borderWidth + self borderCorrectionOffset