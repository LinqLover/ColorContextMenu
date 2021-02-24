actions
setBrightness: aFraction

	self color: (self color ccmWithBrightness: (aFraction max: 0.005)). "Prevent the user from accidentally losing the hue information"