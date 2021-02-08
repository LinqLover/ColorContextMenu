styling
privateInteractionState: aSymbol

	self isSplitter 
		ifFalse: [
			self color: (aSymbol caseOf: {
				[nil] -> [self baseColor].
				[#hover] -> [self baseColor lighter].
				[#active] -> [self baseColor twiceLighter]})] 
		ifTrue: [self color: self splitterColor]