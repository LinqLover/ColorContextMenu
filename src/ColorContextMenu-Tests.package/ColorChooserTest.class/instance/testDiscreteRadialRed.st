tests
testDiscreteRadialRed

	| menu item |
	self chooseDiscreteRadial.
	chooser model color: Color green.
	menu := self openMenu.
	
	item := menu findByLabel: 'red'.
	item ccmClickButton: item class leftButton with: 0 at: item effectiveBounds center.
	item := menu findByLabel: '75%'.
	item ccmClickButton: item class leftButton with: 0 at: item effectiveBounds center.
	
	self assert: (chooser model color red - 0.75) abs < 0.1.