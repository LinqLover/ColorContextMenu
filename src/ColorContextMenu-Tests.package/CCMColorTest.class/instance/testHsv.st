tests
testHsv

	| color |
	color := Color ccmHue: 0.1 saturation: 0.3 lightness: 0.5 alpha: 0.7.
	
	self assert: 0.1 closeTo: color ccmHue.
	self assert: 0.3 closeTo: color saturation.
	self assert: 0.5 closeTo: color ccmLightness.
	self assert: 0.7 closeTo: color alpha.