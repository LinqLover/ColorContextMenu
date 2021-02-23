menus
addToMenu: menu coloredItem: label action: action

	| item |
	item := menu add: label action: action.
	
	(item isKindOf: RadialMenuItemMorph) ifTrue: [
		(self colorForLabel: label) ifNotNil: [:labelColor  |
			item baseColor: (labelColor mixed: 0.6 with: item defaultBaseColor)]].