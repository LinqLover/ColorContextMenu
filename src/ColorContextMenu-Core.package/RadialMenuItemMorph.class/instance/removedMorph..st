submorphs-add/remove
removedMorph: aMorph

	(aMorph isKindOf: RadialMenuMorph) ifTrue: [
		self interactionState: nil].
	
	^ super removedMorph: aMorph