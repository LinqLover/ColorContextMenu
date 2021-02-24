accessing
color: aColor

	super color: aColor.
	
	self labelGroups flattened do: [:attribute |
		self changed: attribute.
		self dependents
			select: [:dep | (dep isKindOf: RadialSliderMorph) and: [dep getter = attribute]]
			thenDo: [:dep | dep handleColor: (((self perform: (self getterSelectorFor: attribute) with: (self perform: attribute)) mixed: 0.6 with: dep defaultHandleColor))]].
	self triggerEvent: #newColor with: self color.