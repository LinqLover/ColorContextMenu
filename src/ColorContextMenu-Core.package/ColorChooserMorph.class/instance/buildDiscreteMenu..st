menus
buildDiscreteMenu: menuFactory

	| menu |
	menu := menuFactory value.
	
	menu
		add: 'random' action: #setRandom;
		addLine.
	
	self labelGroups do: [:group |
		group do: [:attrib |
			menu add: attrib asString subMenu: (
				self buildDiscreteMenu: menuFactory attribute: attrib)].
		menu addLine].
	
	^ menu