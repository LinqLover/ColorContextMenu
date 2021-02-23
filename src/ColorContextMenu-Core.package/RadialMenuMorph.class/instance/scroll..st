event handling
scroll: count

	self rootMenu == self ifFalse: [
		"Don't rotate from submenus. Would be too confusing to pull the rug  from under your own feet. (Also, it make's synchronization of startAngle with submenus much easier.)"
		^ self].
	
	"AnimPropertyAnimation new
		duration: 50;
		target: self;
		property: #offsetAngle:;
		startValue: self offsetAngle;
		endValue: self offsetAngle + (count * 0.6 / (Float pi * 2));
		register;
		start: #deleteWhenFinished."
	self centerAngle: self centerAngle + (count * 0.2 / (Float pi * 2)).
	
	self currentHand mouseFocus in: [:mouseFocus |
		(mouseFocus notNil and: [mouseFocus hasOwner: self]) ifTrue: [
			"Give the focused item a chance to pass focus to another item. See RadialMenuMorph >> #mouseMove:. Make sure to update layout first."
			self fullBounds.
			self currentHand sendMouseEvent: self currentEvent asMouseMove]].
	
	self flag: #todo. "fix hover selection when mouse button is still down"