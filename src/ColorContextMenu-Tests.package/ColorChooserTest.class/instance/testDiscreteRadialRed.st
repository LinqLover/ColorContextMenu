tests
testDiscreteRadialRed

	| menu item |
	self chooseDiscreteRadial.
	chooser model color: Color green.
	menu := self openMenu.
	
	item := menu findByLabel: 'Red'.
	item ccmClickButton: item class leftButton with: 0 at: item effectiveBounds center.
	item := menu findByLabel: '80%'.
	item ccmClickButton: item class leftButton with: 0 at: item effectiveBounds center.
	
	self assert: (chooser model color red - 0.8) abs < 0.1.