initialization
initializeToStandAlone

	super initializeToStandAlone.
	
	self
		startAngle: 0
		stopAngle: Float pi * 2 * (3 / 4).
	self
		innerFraction: 0.25
		outerFraction: 0.75.