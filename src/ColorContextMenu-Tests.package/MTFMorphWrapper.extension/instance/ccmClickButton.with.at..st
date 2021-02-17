*ColorContextMenu-Tests-interacting
ccmClickButton: button with: modifiers at: aPoint

	self morphs do: [:morph |
		| wrapper |
		wrapper := self createWrapperFor: {morph}.
		wrapper ccmSendMouseEvent: #mouseDown button: button modifiers: modifiers position: aPoint.
		self waitShort.
		wrapper ccmSendMouseEvent: #mouseUp button: button modifiers: modifiers position: aPoint].