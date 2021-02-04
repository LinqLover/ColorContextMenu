asserting
assertCmykColor: expected closeTo: actual

	self
		assertCmyk: expected ccmCyan closeTo: actual ccmCyan;
		assertCmyk: expected ccmMagenta closeTo: actual ccmMagenta;
		assertCmyk: expected ccmYellow closeTo: actual ccmYellow;
		assertCmyk: expected ccmCmykBlack closeTo: actual ccmCmykBlack;
		assertCmyk: expected alpha closeTo: actual alpha.