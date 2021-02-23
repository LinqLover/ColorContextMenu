button
openSubmenu: aRadialMenuMorph

	| outerRadius |
	aRadialMenuMorph owner == self ifTrue: [
		^ aRadialMenuMorph delete].
	
	outerRadius := (self ownerMenu ifNil: [self]) outerRadius.
	aRadialMenuMorph
		innerRadius: outerRadius outerRadius: outerRadius * 2 - self innerRadius;
		center: self center.
	aRadialMenuMorph
		centerAngle: self centerAngle
		angleWidth: Float pi / 2.
	self addMorph: aRadialMenuMorph.