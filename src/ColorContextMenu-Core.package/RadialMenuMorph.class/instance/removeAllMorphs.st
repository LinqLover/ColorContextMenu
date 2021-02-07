submorphs-add/remove
removeAllMorphs

	self items do: [:item |
		self privateUnregisterItem: item].
	
	^ super removeAllMorphs