menus
buildDiscreteMenu: menuFactory

	| menu |
	menu := menuFactory value.
	
	"These buttons do not open a submenu; hence they are handled separately."
	menu
		add: 'random' action: #setRandom;
		addLine.
	self
		addToMenu: menu coloredItem: 'lighter' action: #setLighter;
		addToMenu: menu coloredItem: 'darker' action: #setDarker.
	menu addLine.
	self addToMenu: menu item: 'library' asText allBold changeSelector: #libraryChanged variableSubMenu: [
		self buildLibrarySubMenu: menuFactory].
	menu addLine.
	
	self labelGroups
		do: [:group |
			group do: [:attrib |
				self addToMenu: menu coloredItem: attrib asString subMenu: (
					self buildDiscreteMenu: menuFactory attribute: attrib)]]
		separatedBy: [menu addLine].
	(menu isKindOf: RadialMenuMorph) ifTrue: [
		menu addLine].
	
	^ menu