tests
testPopUpMenu
	"Smoke test"

	| menu |
	(self subject findByLabel: 'Pop-up menu') in: [:button |
		[button click] doWhileFalse: [button getModelState]].
	
	(MTFMorphWrapper newWith: {
		(self subject findByPosition: self subject center)
			morphs detectMax: [:m | m ownerChain size]})
				rightClick.
	self
		assert: [(menu := Project current world firstSubmorph) isKindOf: MenuMorph]
		description: ['Expected a MenuMorph but found {1}' format: {menu}].
	menu delete.