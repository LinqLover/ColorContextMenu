tests
testCmykConversion

	| color |
	color := Color ccmCyan: 0.1 magenta: 0.3 yellow: 0.5 black: 0.7 alpha: 0.9.
	"Preconditions"
	self assertCmyk: 0.1 closeTo: color ccmCyan.
	self assertCmyk: 0.3 closeTo: color ccmMagenta.
	self assertCmyk: 0.5 closeTo: color ccmYellow.
	self assertCmyk: 0.7 closeTo: color ccmCmykBlack.
	
	self
		assertCmykColor: (Color ccmCyan: 0.6 magenta: 0.3 yellow: 0.5 black: 0.7 alpha: 0.9)
		closeTo: (color ccmWithCyan: 0.6).
	self
		assertCmykColor: (Color ccmCyan: 0.1 magenta: 0.8 yellow: 0.5 black: 0.7 alpha: 0.9)
		closeTo: (color ccmWithMagenta: 0.8).
	self
		assertCmykColor: (Color ccmCyan: 0.1 magenta: 0.3 yellow: 0.1 black: 0.7 alpha: 0.9)
		closeTo: (color ccmWithYellow: 0.1).
	self
		assertCmykColor: (Color ccmCyan: 0.1 magenta: 0.3 yellow: 0.5 black: 0.2 alpha: 0.9)
		closeTo: (color ccmWithCmykBlack: 0.2).