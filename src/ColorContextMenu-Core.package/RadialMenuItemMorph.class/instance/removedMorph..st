submorphs-add/remove
removedMorph: aMorph

	aMorph isRadialMenuMorph ifTrue: [
		previousSubmenus ifNotNil: [
			previousSubmenus keysAndValuesRemove: [:key :value | value == aMorph]].
		self interactionState: nil].
	
	^ super removedMorph: aMorph