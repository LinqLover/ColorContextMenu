menus
buildDiscreteMenu: menuFactory attribute: aSymbol levels: levels

	| menu setter getter steps item |

	menu := menuFactory value.
	setter := ('set{1}:' format: {aSymbol capitalized}) asSymbol.
	
	steps := levels - 1.
	0 to: steps do: [:level |
		item := menu 
			add: ('{1}%' format: {(level / steps * 100) rounded}) 
			action: [self perform: setter with: level / steps].
		(item isKindOf: RadialMenuItemMorph) ifTrue: [
			getter := ('get{1}:' format: {aSymbol capitalized}) asSymbol.
			item baseColor: (self perform: getter with: level / steps)]].
	
	^ menu