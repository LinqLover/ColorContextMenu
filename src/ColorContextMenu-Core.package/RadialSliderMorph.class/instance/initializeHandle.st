initialization
initializeHandle

	handle := ArcRingMorph new.
	handle color: self handleColor.
	handle angleWidth: self defaultHandleAngleWidth.
	handle
		on: #mouseDown send: #mouseDownInHandle: to: self;
		on: #mouseUp send: #mouseUpInHandle: to: self;
		on: #mouseMove send: #mouseMoveInHandle: to: self.
	self addMorphFront: handle.