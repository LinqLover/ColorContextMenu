tests
testHsvConversion

	| color |
	color := Color ccmHue: 0.2 saturation: 0.4 lightness: 0.6 alpha: 0.8.
	
	self
		assertHsvColor: (Color ccmHue: 0.2 saturation: 0.4 lightness: 0.3 alpha: 0.8)
		closeTo: (color ccmWithLightness: 0.3).