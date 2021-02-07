menus
discreteRadialMenu
	"Menu items are only chosen in an illustrative fashion. To be replaced soon in order to align with #contextMenu."

	| menu |
	menu := RadialMenuMorph new.
	menu target: self.
	menu addItemMorph: (RadialMenuItemMorph new
		label: 'random';
		action: #setRandom;
		yourself).
	menu addItemMorph: (RadialMenuItemMorph new
		label: 'lighter';
		action: [self setBrightness: self color brightness + 0.2];
		yourself).
	menu addItemMorph: (RadialMenuItemMorph new
		label: 'darker';
		action: [self setBrightness: self color brightness - 0.2];
		yourself).
	^ menu