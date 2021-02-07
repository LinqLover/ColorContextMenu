geometry testing
containsAngle: angle

	self isArc ifFalse: [^ true].
	^ self stopAngle - self startAngle \\ (Float pi * 2) >= (angle - self startAngle \\ (Float pi * 2))