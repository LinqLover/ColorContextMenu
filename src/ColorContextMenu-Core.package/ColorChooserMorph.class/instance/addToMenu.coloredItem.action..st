menus - private
addToMenu: menu coloredItem: label action: action

	| item |
	item := menu add: label action: action.
	(self colorForItem: item forLabel: label) ifNotNil: [:labelColor |
		self colorizeMenuItem: item color: labelColor].