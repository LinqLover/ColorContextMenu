as yet unclassified
basicLabelMorph

	| transformMorph textMorph |
	transformMorph := TransformationMorph new.
	textMorph := TextMorph new lock.
	textMorph color: Color white.
	transformMorph extent: textMorph extent.
	transformMorph addMorph: textMorph.
	^ transformMorph