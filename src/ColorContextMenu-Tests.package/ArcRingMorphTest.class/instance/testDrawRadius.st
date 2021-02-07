tests
testDrawRadius
	"Smoke test"

	| arcRing form threshold |
	arcRing := ArcRingMorph new.
	arcRing extent: 500 @ 500.
	arcRing innerFraction: 0.3 outerFraction: 0.6.
	arcRing borderWidth: 0.
	
	form := arcRing imageForm.
	threshold := 10.
	self
		assert: Color transparent equals: (form colorAt: 2 @ 1);
		assert: Color transparent equals: (form colorAt: 250 @ 250 - (250 @ 0 * 0.3 - threshold));
		assert: arcRing color equals: (form colorAt: 250 @ 250 - (250 @ 0 * 0.3 + threshold));
		assert: arcRing color equals: (form colorAt: 250 @ 250 - (250 @ 0 * 0.6 - threshold));
		assert: Color transparent equals: (form colorAt: 250 @ 250 - (250 @ 0 * 0.6 + threshold)).