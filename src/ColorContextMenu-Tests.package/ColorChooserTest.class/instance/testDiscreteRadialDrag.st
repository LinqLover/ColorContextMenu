tests
testDiscreteRadialDrag

	| menu item |
	self fail: #notImplemented. "Goes beyond capabilities of MTF at the moment, see: https://github.com/hpi-swa-lab/squeak/issues/57"
	
	self chooseDiscreteRadial.
	(self subject createWrapperFor: {
		(self subject findByPosition: self subject center)
			morphs detectMax: [:m | m ownerChain size]})
				rightMouseDown: 0.
	menu := self findMenu.
	
	item := menu findByLabel: 'Random'.
	item halt sendMouseMoveEventForButton: item class rightButton modifiers: 0 position: item effectiveBounds center.
	self flag: #todo. "We need more elaborate simulation, try out MorphicEventTests?"
	self shouldChangeColor: [item sendMouseEvent: #mouseUp button: item class rightButton modifiers: 0 position: item effectiveBounds center].