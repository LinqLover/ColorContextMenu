event handling
yellowButtonActivity: shiftState

	(self menuMode caseOf: {
		[nil] -> [^ self flash].
		[#popUp] -> [self contextMenu].
		[#discrete] -> [self discreteRadialMenu].
	}) popUpInWorld.