event handling
handleEvent: anEvent

	super handleEvent: anEvent.
	
	(anEvent hand mouseFocus == self
		and: [anEvent isMouse]
		and: [anEvent wasHandled not])
		ifTrue: [
			"Share focus events with children and keep #priorMouseFocus in sync."
			| result |
			result := self defaultEventDispatcher dispatchEvent: anEvent toSubmorphsOf: self.
			(self hasMouseFocus: anEvent hand) ifFalse: [
				anEvent hand mouseFocus setProperty: #priorMouseFocus toValue: self].
			result == #rejected ifFalse: [^ result]].
	
	^ anEvent