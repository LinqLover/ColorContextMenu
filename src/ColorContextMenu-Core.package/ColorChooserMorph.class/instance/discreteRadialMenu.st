menus
discreteRadialMenu
	"Menu items are only chosen in an illustrative fashion. To be replaced soon in order to align with #contextMenu."

	| menu |
	menu := RadialMenuMorph new.
	menu target: self.
	
	self labelGroups
		do: [:group |
			group do: [:attribute |
				menu add: attribute asString action: #setRandom.
				self flag: #todo "add action open submenu"]]
		separatedBy: [menu addLine].
		
	^ menu