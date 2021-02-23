menus
addToMenu: menu coloredItem: label subMenu: subMenu

	| item |
	item := menu add: label subMenu: subMenu.
	
	(item isKindOf: RadialMenuItemMorph) ifTrue: [
		(self colorForLabel: label) ifNotNil: [:labelColor  |
			item baseColor: (labelColor mixed: 0.6 with: item defaultBaseColor)]].