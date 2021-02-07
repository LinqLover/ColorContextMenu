layout
doRadialLayout

	| angles size |
	size := self items size.
	"Like a watch: CW starting at North"
	angles := (1 to: self items size) collect: [:i |
		self startAngle + Float pi - (Float pi  * 2 * i / size)].
	self items withIndexDo: [:item :index |
		item
			startAngle: (angles atWrap: index + 1)
			stopAngle: (angles at: index).
		item
			innerFraction: self innerFractionForItems
			outerFraction: self outerFractionForItems].