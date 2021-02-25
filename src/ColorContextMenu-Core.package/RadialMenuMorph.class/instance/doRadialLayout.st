layout
doRadialLayout

	| flexValues flexPos angles |
	flexValues := self allItems collect: [:item | item radialFlexWeight].
	flexValues ifEmpty: [^ self].
	"Like a watch: CW starting at North"
	flexPos := 0.
	angles := (flexValues copyWith: 0) collect: [:flex |
		flexPos := flexPos + flex.
		self stopAngle - (self angleWidth * (flexPos - flex) / flexValues sum)].
	
	self allItems withIndexDo: [:item :index |
		item
			startAngle: (angles atWrap: index + 1)
			stopAngle: (angles at: index).
		item
			innerFraction: self innerFractionForItems
			outerFraction: self outerFractionForItems].