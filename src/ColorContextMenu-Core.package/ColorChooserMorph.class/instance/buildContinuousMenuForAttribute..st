menus
buildContinuousMenuForAttribute: aSymbol

	| slider |
	slider := RadialSliderMorph
		on: self
		getter: aSymbol
		setter: (self setterSelectorFor: aSymbol).
	self addDependent: slider.
	^ slider