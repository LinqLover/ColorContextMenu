menus
buildDiscreteMenu: menuFactory attribute: aSymbol levels: levels

	| menu setter getter steps |
	menu := menuFactory value.
	setter := self setterSelectorFor: aSymbol.
	getter := self getterSelectorFor: aSymbol.
	
	steps := levels - 1.
	0 to: steps do: [:level |
		| item |
		item := menu 
			add: ('{1}%' format: {(level / steps * 100) rounded}) 
			action: [self perform: setter with: level / steps].
		self colorizeMenuItem: item color: (self perform: getter with: level / steps)].
	
	^ menu