tests
testPopUpRandom

	| menu item |
	self choosePopUp.
	menu := self openMenu.
	
	item := menu findByCriteria: [:morph | [morph contents = 'random'] ifError: [false]].
	self shouldChangeColor: [item invokeWithEvent: (menu
		generateMouseEvent: #mouseUp button: menu class leftButton modifiers: 0 on: item)].