tests
testCmyk

	| color |
	color := Color ccmCyan: 0.1 magenta: 0.3 yellow: 0.5 black: 0.7 alpha: 0.9.
	
	self assertCmyk: 0.1 closeTo: color ccmCyan.
	self assertCmyk: 0.3 closeTo: color ccmMagenta.
	self assertCmyk: 0.5 closeTo: color ccmYellow.
	self assertCmyk: 0.7 closeTo: color ccmCmykBlack.
	self assertCmyk: 0.9 closeTo: color alpha.