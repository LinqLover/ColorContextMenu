actions
setDarker

	self setBrightness: self color brightness - (1 / (self defaultNumberOfLevels - 1)) asFloat.