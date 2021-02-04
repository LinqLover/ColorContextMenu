tests
testRgbConversion

	| color |
	color := Color r: 0.2 g: 0.4 b: 0.6 alpha: 0.8.
	
	self
		assertRgbColor: (Color r: 0.5 g: 0.4 b: 0.6 alpha: 0.8)
		closeTo: (color ccmWithRed: 0.5).
	self
		assertRgbColor: (Color r: 0.2 g: 0.7 b: 0.6 alpha: 0.8)
		closeTo: (color ccmWithGreen: 0.7).
	self
		assertRgbColor: (Color r: 0.2 g: 0.4 b: 0.1 alpha: 0.8)
		closeTo: (color ccmWithBlue: 0.1).
	self
		assertRgbColor: (Color r: 0.2 g: 0.4 b: 0.6 alpha: 0.3)
		closeTo: (color ccmWithAlpha: 0.3).