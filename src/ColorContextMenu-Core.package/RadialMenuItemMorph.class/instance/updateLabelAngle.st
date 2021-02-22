layout
updateLabelAngle

	| pi angleBelow2Pi |
	pi := Float pi.
	angleBelow2Pi := self centerAngle - (self centerAngle / (2 * pi)) floor.
	angleBelow2Pi < pi 
		ifTrue: [ self labelAngle: self centerAngle - (0.5 * pi) ] 
		ifFalse: [ self labelAngle: self centerAngle + (0.5 * pi) ]
	