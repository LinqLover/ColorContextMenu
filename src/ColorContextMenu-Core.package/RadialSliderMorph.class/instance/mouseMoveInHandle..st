event handling
mouseMoveInHandle: anEvent

	| angle relativeAngle trimmedAngle rawFraction |
	angle := self angleOfPoint: anEvent position.
	handle centerAngle: angle.
	
	relativeAngle := handle startAngle - self startAngle \\ (Float pi * 2).
	trimmedAngle := self isArc
		ifTrue: [
			| trimDelta |
			trimDelta := Float pi * 2 - (self centerAngle + Float pi - self startAngle \\ (Float pi * 2)).
			relativeAngle + trimDelta \\ (Float pi * 2) - trimDelta]
		ifFalse: [relativeAngle].
	rawFraction := trimmedAngle / (self angleWidth - handle angleWidth).
	self valueFraction: (rawFraction min: 1 max: 0).