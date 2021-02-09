construction
add: aString subMenu: aRadialMenuMorph

	| item |
	item := nil.
	self flag: #refactor. "ct: Consider moving this logic into RadialMenuMorph"
	^ item := self add: aString action: [
		aRadialMenuMorph
			innerRadius: self outerRadius outerRadius:
				self outerRadius * 2 - self innerRadius;
			center: self center.
		item ifNotNil: [
			aRadialMenuMorph
				centerAngle: item centerAngle
				angleWidth: Float pi / 2].
		self addMorph: aRadialMenuMorph openInWorld]