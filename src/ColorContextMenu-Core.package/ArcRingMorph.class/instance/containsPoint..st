geometry testing
containsPoint: aPoint

	(self bounds containsPoint: aPoint) ifFalse: [^ false].
	
	(aPoint closeTo: self center) ifTrue: [^ self innerFraction <= 0].
	(self innerRadius isZero not and: [(aPoint - self center / self innerRadius) squared < 1]) ifTrue: [^ false].
	(aPoint - self center / self outerRadius) squared > 1 ifTrue: [^ false].
	
	^ self containsAngle: (self angleOfPoint: aPoint)