initialization
initialize

	super initialize.
	
	self innerFraction: self defaultInnerFraction.
	self centerAngle: 0.
	self borderWidth: self defaultBorderWidth.
	self extent: self defaultExtent.
	self changeProportionalLayout.