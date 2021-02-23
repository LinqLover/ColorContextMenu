tests
testDiscreteRadialMenu
	"Smoke test"

	| menu |
	self chooseDiscreteRadial.
	self openMenu.
	
	self
		assert: [(menu := self findTopMorph) isKindOf: RadialMenuMorph]
		description: ['Expected a RadialMenuMorph but found {1}' format: {menu}].
	
	menu delete.