event handling
scroll: count

	"AnimPropertyAnimation new
		duration: 50;
		target: self;
		property: #offsetAngle:;
		startValue: self offsetAngle;
		endValue: self offsetAngle + (count * 0.6 / (Float pi * 2));
		register;
		start: #deleteWhenFinished."
	self offsetAngle: self offsetAngle + (count * 0.2 / (Float pi * 2)).
	
	self handleEvent: self currentEvent asMouseMove.
	self flag: #todo. "fix hover selection when mouse button is still down"