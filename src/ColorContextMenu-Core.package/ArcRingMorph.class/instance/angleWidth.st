accessing
angleWidth

	self isArc ifFalse: [^ Float pi * 2].
	
	^ (self startAngle <= self stopAngle
		ifTrue: [self stopAngle]
		ifFalse: [self stopAngle + (Float pi * 2)])
			- self startAngle