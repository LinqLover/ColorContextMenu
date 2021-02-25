layout
doLayoutIn: layoutBounds

	handle
		innerRadius: self innerRadius outerRadius: self outerRadius;
		center: self center.
	self updateValue; flag: #needsAttention. "Possible bottleneck!"
	
	^ super doLayoutIn: layoutBounds