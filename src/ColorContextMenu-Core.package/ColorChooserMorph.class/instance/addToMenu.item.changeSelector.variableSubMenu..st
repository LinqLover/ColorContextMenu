menus - private
addToMenu: menu item: label changeSelector: aSymbol variableSubMenu: aBlock

	| item |
	menu isRadialMenuMorph ifFalse: [
		^ menu add: label subMenu: aBlock value].
	
	item := menu add: label subMenu: aBlock.
	self when: aSymbol send: #updateSubmenus to: item.
	^ item