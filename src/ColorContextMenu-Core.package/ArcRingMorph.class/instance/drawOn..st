drawing
drawOn: aCanvas
	"Draw the receiver on aCanvas. Midpoint circle algorithm adaption."

	self isCircle
		ifTrue: [self drawCircleOn: aCanvas "optimized."]
		ifFalse: [self drawEllipseOn: aCanvas].