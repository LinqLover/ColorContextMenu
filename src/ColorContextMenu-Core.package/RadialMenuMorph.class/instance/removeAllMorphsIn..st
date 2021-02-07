submorphs-add/remove
removeAllMorphsIn: aCollection

	(aCollection intersection: self items) do: [:item |
		self privateUnregisterItem: item].
	
	^ super removeAllMorphsIn: aCollection