accessing
subMenu
	"Can be a RadialMenuMorph, or a block, symbol, or message send and may refer to target. See #openSubmenu:."

	^ self hasSubMenu ifTrue: [action]