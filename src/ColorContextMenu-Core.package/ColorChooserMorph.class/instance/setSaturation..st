actions
setSaturation: aFraction

	self color: (self color ccmWithSaturation: (aFraction max: 0.005)). "Prevent the user from accidentally losing the hue information"