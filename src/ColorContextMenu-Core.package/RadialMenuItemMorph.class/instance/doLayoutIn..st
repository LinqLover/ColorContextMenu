layout
doLayoutIn: layoutBounds

	| highAngle |
	"Reposition label"
	highAngle := self stopAngle > self startAngle
		ifTrue: [self stopAngle]
		ifFalse: [self stopAngle + (Float pi * 2)].
	labelMorph center: self center + ((self startAngle + (highAngle - self startAngle / 2)) sinCos * (self innerRadius + self outerRadius / 2)).
	
	^ super doLayoutIn: layoutBounds