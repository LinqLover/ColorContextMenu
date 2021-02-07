submorphs-add/remove
privateRemove: aMorph

	(self items includes: aMorph)
		ifTrue: [self privateUnregisterItem: aMorph].
	
	^ super privateRemove: aMorph