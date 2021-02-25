menus
buildMenu: menuFactory continuous: continuous

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
					continuous
						ifTrue: [self buildContinuousMenuForAttribute: attrib]
						ifFalse: [self buildDiscreteMenu: menuFactory attribute: attrib])]]
		separatedBy: [menu addLine].
	menu isRadialMenuMorph ifTrue: [
		menu addLine].
	
	^ menu