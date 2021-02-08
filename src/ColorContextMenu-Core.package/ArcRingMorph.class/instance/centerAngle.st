as yet unclassified
centerAngle

	^ self stopAngle > self startAngle
		ifTrue: [{self startAngle . self stopAngle} average]
		ifFalse: [{self startAngle . self stopAngle + (Float pi * 2)} average]