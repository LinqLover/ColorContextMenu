styling
privateInteractionState: aSymbol

	self color: (aSymbol caseOf: {
		[nil] -> [self baseColor].
		[#hover] -> [self baseColor lighter].
		[#active] -> [self baseColor twiceLighter]
	}).