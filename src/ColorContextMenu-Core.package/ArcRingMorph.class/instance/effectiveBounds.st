geometry - layout
effectiveBounds
	"Answer the bounds that are actualy occluded by the visible arc."

	| rect |
	rect := self startAngle sinCos rect: self stopAngle sinCos.
	(0 to: 3) * Float pi / 2 do: [:angle |
		(self containsAngle: angle) ifTrue: [
			rect := rect encompass: angle sinCos]].
	^ (((rect scaleBy: self innerRadius) merge: (rect scaleBy: self radius))
		translateBy: self center)
			outsetBy: self borderCorrectionOffset