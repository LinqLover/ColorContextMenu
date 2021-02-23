styling
privateInteractionState: aSymbol

	interactionState := aSymbol.
	self color: (aSymbol caseOf: {
		[nil] -> [self baseColor].
		[#hover] -> [self baseColor lighter].
		[#active] -> [self baseColor twiceLighter]
	}).
	self changed: #color