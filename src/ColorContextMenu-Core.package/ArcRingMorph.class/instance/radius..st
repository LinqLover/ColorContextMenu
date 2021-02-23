accessing
radius: aNumber

	self flag: #deprecate. "ct: Do we need it?"
	self extent: self extent * (aNumber / self radius)