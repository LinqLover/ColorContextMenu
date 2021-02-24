event handling
mouseDown: anEvent still: still

	| angleDelta mouseAngle |
	anEvent redButtonPressed ifFalse: [^ self].
	(handle containsPoint: anEvent position) ifTrue: [^ self].
	
	mouseAngle := self angleOfPoint: anEvent position.
	angleDelta := mouseAngle - handle centerAngle \\ (Float pi * 2) - (self centerAngle + Float pi - handle centerAngle \\ (Float pi * 2)).
	self valueFraction: (self valueFraction + (angleDelta sign * (still ifFalse: [0.1] ifTrue: [0.02])) min: 1 max: 0).