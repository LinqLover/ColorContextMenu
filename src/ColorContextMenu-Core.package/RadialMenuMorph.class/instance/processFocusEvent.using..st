event handling
processFocusEvent: evt using: dispatcher

	^ dispatcher dispatchFocusEventFully: evt with: self