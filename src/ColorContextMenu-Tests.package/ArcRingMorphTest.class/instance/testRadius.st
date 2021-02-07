tests
testRadius

	| arcRing |
	arcRing := ArcRingMorph new.
	arcRing extent: 500 @ 400.
	self assert: 250 @ 200 equals: arcRing radius.