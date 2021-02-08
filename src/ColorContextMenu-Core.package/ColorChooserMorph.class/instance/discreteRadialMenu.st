menus
discreteRadialMenu
	"Menu items are only chosen in an illustrative fashion. To be replaced soon in order to align with #contextMenu."

	| menu |
	menu := RadialMenuMorph new.
	menu target: self.
	
	self labelGroups
		do: [:group |
			group do: [:attribute |
				menu addItemMorph: (RadialMenuItemMorph new
					label: attribute asString;
					action: #setRandom;
					yourself).
				self flag: 'TODO: add action open submenu'.
			].
			menu addItemMorph: (RadialMenuItemMorph new beSplitter)
		].
		
	^ menu