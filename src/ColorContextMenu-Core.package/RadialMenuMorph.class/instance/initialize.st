initialization
initialize

	super initialize.
	
	self extent: self defaultExtent.
	self innerFraction: self defaultInnerFraction.
	self centerAngle: 0.
	self changeProportionalLayout.