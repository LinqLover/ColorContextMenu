menus - private
addToMenu: menu coloredItem: label subMenu: subMenu

	| item |
	item := menu add: label subMenu: subMenu.
	(self colorForItem: item forLabel: label) ifNotNil: [:labelColor |
		self colorizeMenuItem: item color: labelColor].