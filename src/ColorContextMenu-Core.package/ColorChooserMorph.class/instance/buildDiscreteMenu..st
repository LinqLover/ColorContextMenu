menus
buildDiscreteMenu: menuFactory

	| menu |
	menu := menuFactory value.
	
	"These buttons do not open a submenu; hence they are handled separately."
	menu
		add: 'random' action: #setRandom;
		addLine;
		add: 'lighter' action: #setLighter;
		add: 'darker' action: #setDarker;
		addLine;
		add: 'LIBRARY' subMenu: self buildLibrarySubMenu.
	
	self labelGroups do: [:group |
		group do: [:attrib |
			menu add: attrib asString subMenu: (
				self buildDiscreteMenu: menuFactory attribute: attrib)].
		menu addLine].
	
	^ menu