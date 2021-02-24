accessing
value: aNumber

	self setter ifNotNil: [:evaluable |
		evaluable value: self target value: aNumber].