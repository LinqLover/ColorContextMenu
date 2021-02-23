accessing
innerRadius: innerRadius outerRadius: outerRadius

	self assert: innerRadius x / innerRadius y = (outerRadius x / outerRadius y).
	self radius: outerRadius.
	self innerFraction: innerRadius r / outerRadius r outerFraction: 1.