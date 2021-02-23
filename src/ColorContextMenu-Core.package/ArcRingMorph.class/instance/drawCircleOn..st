drawing
drawCircleOn: aCanvas
	"Draw the receiver on aCanvas. Midpoint circle algorithm adaption."

	| isArc radius minOctant maxOctant min max d x y |
	isArc := self isArc.
	radius := self radius x min: self radius y.
	minOctant := (self startAngle / (Float pi * 2) * 8 \\ 8) floor.
	maxOctant := (self stopAngle / (Float pi * 2) * 8 \\ 8 - 1) ceiling.
	self stopAngle - self startAngle > 1e-10 ifFalse: [
		maxOctant := maxOctant + 8].
	min := self startAngle sinCos * radius.
	max := self stopAngle sinCos * radius.
	
	x := 0.
	y := radius.
	d := 1 - radius.
	aCanvas asBalloonCanvas translateBy: self center during: [:canvas |
		"Central midpoint loop."
		[x <= y] whileTrue: [
			minOctant to: maxOctant do: [:octant |
				(octant \\ 8 caseOf: {
					[0] -> [((octant = minOctant ==> [x >= min x])
						and: [octant = maxOctant ==> [x <= max x]])
							ifTrue: [x @ y]].
					[1] -> [((octant = minOctant ==> [x <= min y])
						and: [octant = maxOctant ==> [x >= max y]])
							ifTrue: [y @ x]].
					[2] -> [((octant = minOctant ==> [x negated <= min y])
						and: [octant = maxOctant ==> [x negated >= max y]])
							ifTrue: [y @ x negated]].
					[3] -> [((octant = minOctant ==> [x <= min x])
						and: [octant = maxOctant ==> [x >= max x]])
							ifTrue: [x @ y negated]].
					[4] -> [((octant = minOctant ==> [x negated <= min x])
						and: [octant = maxOctant ==> [x negated >= max x]])
							ifTrue: [x negated @ y negated]].
					[5] -> [((octant = minOctant ==> [x negated >= min y])
						and: [octant = maxOctant ==> [x negated <= max y]])
							ifTrue: [y negated @ x negated]].
					[6] -> [((octant = minOctant ==> [x >= min y])
						and: [octant = maxOctant ==> [x <= max y]])
							ifTrue: [y negated @ x]].
					[7] -> [((octant = minOctant ==> [x negated >= min x])
						and: [octant = maxOctant ==> [x negated <= max x]])
							ifTrue: [x negated @ y]]
				}) ifNotNil: [:p |
					canvas line: (p * innerFraction) rounded to: (p * outerFraction) rounded width: self borderCorrectionOffset color: self color.
					self borderWidth > 0 ifTrue: [
						innerFraction > 0 ifTrue: [
							canvas fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * innerFraction) color: self borderColor].
						canvas fillOval: (self borderWidth asPoint + self borderCorrectionOffset center: p * outerFraction) color: self borderColor]]].
			d <= 0
				ifFalse: [
					d := d + (x - y * 2) + 5.
					y := y - 1]
				ifTrue: [
					d := d + (x * 2) + 3].
			 x := x + 1].
		
		"Draw arc lines if approriate."
		isArc ifTrue: [
			canvas
				line: min * innerFraction to: min * outerFraction width: self borderWidth color: self borderColor;
				line: max * innerFraction to: max * outerFraction width: self borderWidth color: self borderColor]].