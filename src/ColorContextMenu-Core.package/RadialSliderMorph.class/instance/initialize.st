initialization
initialize

	super initialize.
	
	self extent: self defaultExtent.
	self innerFraction: self defaultInnerFraction.
	
	self initializeHandle.