tests
testDiscreteRadialMenu
	"Smoke test"

	| menu |
	(self subject findByLabel: 'Radial menu (discrete)') in: [:button |
		[button click] doWhileFalse: [button getModelState]].
	
	(MTFMorphWrapper newWith: {
		(self subject findByPosition: self subject center)
			morphs detectMax: [:m | m ownerChain size]})
				rightClick.
	self
		assert: [(menu := self findTopMorph) isKindOf: RadialMenuMorph]
		description: ['Expected a RadialMenuMorph but found {1}' format: {menu}].
	menu delete.