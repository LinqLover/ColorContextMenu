tests
testHsbConversion

	| color |
	color := Color ccmHue: 0.2 saturation: 0.4 brightness: 0.6 alpha: 0.8.
	
	self
		assertHsvColor: (Color ccmHue: 0.5 saturation: 0.4 brightness: 0.6 alpha: 0.8)
		closeTo: (color ccmWithHue: 0.5).
	self
		assertHsvColor: (Color ccmHue: 0.2 saturation: 0.7 brightness: 0.6 alpha: 0.8)
		closeTo: (color ccmWithSaturation: 0.7).
	self
		assertHsvColor: (Color ccmHue: 0.2 saturation: 0.4 brightness: 0.1 alpha: 0.8)
		closeTo: (color ccmWithBrightness: 0.1).