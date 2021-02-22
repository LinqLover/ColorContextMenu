menus
buildLibrarySubMenu

	| menu |
	menu := RadialMenuMorph new target: self; yourself.
	
	self flag: 'TODO'.
	
	1 to: 8 do: [ :itemPos |
		menu add: 'Save Current Color' action: [
			(menu items at: itemPos)
				action: [
					self library at: itemPos put: self color.
					(menu items at: itemPos) color: self color]; "TODO: no translucence?"
				color: (self library at: itemPos);
				label: ((self library at: itemPos) pixelValueForDepth: 32) hex
		]
	].
	
	^ menu
	