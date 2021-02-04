asserting
assertRgbColor: expected closeTo: actual

	self
		assert: expected red closeTo: actual red;
		assert: expected green closeTo: actual green;
		assert: expected blue closeTo: actual blue;
		assert: expected alpha closeTo: actual alpha.