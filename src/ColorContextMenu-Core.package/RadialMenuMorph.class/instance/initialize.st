initialization
initialize

	super initialize.
	
	self innerFraction: self defaultInnerFraction.
	self borderWidth: self defaultBorderWidth.
	self extent: self defaultExtent.
	self changeProportionalLayout.