drawing
drawEllipseOn: aCanvas
	"Draw the receiver on aCanvas. Midpoint ellipse algorithm adaption."

	| radius minQuadrant maxQuadrant min max d x y |
	radius := self radius.
	minQuadrant := (self startAngle / (Float pi * 2) * 4 \\ 4) floor.
	maxQuadrant := (self stopAngle / (Float pi * 2) * 4 \\ 4 - 1) ceiling.
	self stopAngle - self startAngle > 1e-10 ifFalse: [
		maxQuadrant := maxQuadrant + 4].
	min := self startAngle sinCos * radius.
	max := self stopAngle sinCos * radius.
	
	x := 0.
	y := radius y.
	d := x @ y * (radius y squared @ radius x squared) * 2.
	aCanvas asBalloonCanvas translateBy: self center during: [:canvas |
		| d1 d2 |
		"Region 1."
		d1 := radius y squared + (0.25 - radius y * radius x squared).
		[d x < d y] whileTrue: [
			minQuadrant to: maxQuadrant do: [:quadrant |
				(quadrant \\ 4 caseOf: {
					[0] -> [((quadrant = minQuadrant ==> [x >= min x])
						and: [quadrant = maxQuadrant ==> [x <= max x]])
							ifTrue: [x @ y]].
					[1] -> [((quadrant = minQuadrant ==> [x <= min x])
						and: [quadrant = maxQuadrant ==> [x >= max x]])
							ifTrue: [x @ y negated]].
					[2] -> [((quadrant = minQuadrant ==> [x negated <= min x])
						and: [quadrant = maxQuadrant ==> [x negated >= max x]])
							ifTrue: [x negated @ y negated]].
					[3] -> [((quadrant = minQuadrant ==> [x negated >= min x])
						and: [quadrant = maxQuadrant ==> [x negated <= max x]])
							ifTrue: [x negated @ y]].
				}) ifNotNil: [:p |
					canvas line: (p * innerFraction) rounded to: (p * outerFraction) rounded width: self borderCorrectionOffset color: self color.
					self borderWidth > 0 ifTrue: [
						innerFraction > 0 ifTrue: [
							canvas fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * innerFraction) color: self borderColor].
						canvas fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * outerFraction) color: self borderColor]]].
			x := x + 1.
			d1 < 0
				ifTrue: [
					d := d + (radius y squared * 2 @ 0).
					d1 := d1 + d x + radius y squared]
				ifFalse: [
					y := y - 1.
					d := d + (radius y squared @ radius x squared negated * 2).
					d1 := d1 + d x - d y + radius y squared]].
		
		"Region 2."
		d2 := (radius y squared * (x + 0.5) squared) + (radius x squared * (y - 1) squared) - (radius x squared * radius y squared).
		[y >= 0] whileTrue: [
			minQuadrant to: maxQuadrant do: [:quadrant |
				(quadrant \\ 4 caseOf: {
					[0] -> [((quadrant = minQuadrant ==> [x >= min x])
						and: [quadrant = maxQuadrant ==> [x <= max x]])
							ifTrue: [x @ y]].
					[1] -> [((quadrant = minQuadrant ==> [x <= min x])
						and: [quadrant = maxQuadrant ==> [x >= max x]])
							ifTrue: [x @ y negated]].
					[2] -> [((quadrant = minQuadrant ==> [x negated <= min x])
						and: [quadrant = maxQuadrant ==> [x negated >= max x]])
							ifTrue: [x negated @ y negated]].
					[3] -> [((quadrant = minQuadrant ==> [x negated >= min x])
						and: [quadrant = maxQuadrant ==> [x negated <= max x]])
							ifTrue: [x negated @ y]].
				}) ifNotNil: [:p |
					canvas line: (p * innerFraction) rounded to: (p * outerFraction) rounded width: self borderCorrectionOffset color: self color.
					self borderWidth > 0 ifTrue: [
						innerFraction > 0 ifTrue: [
							canvas
								fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * innerFraction) color: self borderColor].
						canvas fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * outerFraction) color: self borderColor]]].
			y := y - 1.
			d2 > 0
				ifTrue: [
					d := d - (0 @ radius x squared * 2).
					d2 := d2 - d y + radius x squared]
				ifFalse: [
					x := x + 1.
					d := d + (radius y squared @ radius x squared negated * 2).
					d2 := d2 + d x - d y + radius x squared]].
		
		"Draw arc lines if approriate."
		(self startAngle closeTo: self stopAngle) ifFalse: [
			canvas
				line: min * innerFraction to: min * outerFraction width: self borderWidth color: self borderColor;
				line: max * innerFraction to: max * outerFraction width: self borderWidth color: self borderColor]].