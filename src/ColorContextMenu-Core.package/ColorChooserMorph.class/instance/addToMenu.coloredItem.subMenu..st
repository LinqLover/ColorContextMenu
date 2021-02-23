menus - private
addToMenu: menu coloredItem: label subMenu: subMenu

	| item |
	item := menu add: label subMenu: subMenu.
	(self colorForLabel: label) ifNotNil: [:labelColor |
		self colorizeMenuItem: item color: labelColor].