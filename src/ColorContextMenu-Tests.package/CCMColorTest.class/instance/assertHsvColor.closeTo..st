asserting
assertHsvColor: expected closeTo: actual

	self
		assert: expected hue / 360 closeTo: actual hue / 360;
		assert: expected saturation closeTo: actual saturation;
		assert: expected brightness closeTo: actual brightness;
		assert: expected alpha closeTo: actual alpha.