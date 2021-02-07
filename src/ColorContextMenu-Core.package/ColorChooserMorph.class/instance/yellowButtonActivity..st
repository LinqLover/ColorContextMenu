event handling
yellowButtonActivity: shiftState

	self menuMode caseOf: {
		[nil] -> [self flash].
		[#popUp] -> [self contextMenu popUpInWorld: self currentWorld].
		[#discrete] -> [self discreteRadialMenu popUpFor: self currentEvent].
	}.