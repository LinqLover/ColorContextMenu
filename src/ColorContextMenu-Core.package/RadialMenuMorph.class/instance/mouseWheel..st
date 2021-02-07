event handling
mouseWheel: anEvent

	anEvent isWheelUp ifTrue: [
		self scrollUp: (anEvent verticalScrollDelta: ScrollPane verticalScrollDeltaPerMouseWheelNotch)].
	anEvent isWheelDown ifTrue: [
		self scrollDown: (anEvent verticalScrollDelta: ScrollPane verticalScrollDeltaPerMouseWheelNotch)].