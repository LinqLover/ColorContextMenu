tests
testPopUpMenu
	"Smoke test"

	| menu |
	self choosePopUp.
	self openMenu.
	
	self
		assert: [(menu := self findTopMorph) isKindOf: MenuMorph]
		description: ['Expected a MenuMorph but found {1}' format: {menu}].
	
	menu delete.