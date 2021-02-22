submorphs-accessing
noteNewOwner: aMorph

	target ifNil: [target := self target].
	
	super noteNewOwner: aMorph.
	
	allButtons := nil.