*ColorContextMenu-Tests-interacting
ccmSendMouseEvent: eventType button: button modifiers: modifiers position: aPoint

	self morphs do: [:morph |
		morph handleEvent: (self
			ccmGenerateMouseEvent: eventType
			button: button
			modifiers: modifiers
			position: aPoint)].