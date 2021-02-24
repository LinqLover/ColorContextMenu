tests
testDiscreteRadialRandom

	| menu item |
	self chooseDiscreteRadial.
	menu := self openMenu.
	
	item := menu findByLabel: 'random'.
	self shouldChangeColor: [item ccmClickButton: item class leftButton with: 0 at: item effectiveBounds center].