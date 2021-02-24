geometry testing
containsAngle: angle

	self isArc ifFalse: [^ true].
	^ angle - self startAngle \\ (Float pi * 2) <= (self stopAngle - self startAngle \\ (Float pi * 2))