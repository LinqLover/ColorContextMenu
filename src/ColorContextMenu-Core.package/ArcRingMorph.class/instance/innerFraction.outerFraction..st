accessing
innerFraction: innerFractionNumber outerFraction: outerFractionNumber

	self assert: [innerFractionNumber between: 0 and: 1].
	self assert: [outerFractionNumber between: 0 and: 1].
	
	innerFraction := innerFractionNumber.
	outerFraction := outerFractionNumber.
	
	self layoutChanged; changed.