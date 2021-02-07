stepping and presenter
step

	self
		startAngle: self startAngle - (Float pi * 2 * self stepTime / 1700)
		stopAngle: self stopAngle - (Float pi * 2 * self stepTime / 1700).
	self
		innerFraction: (Time millisecondClockValue / 210) sin + 1 / 2 * (0.4875 - 0.425) + 0.425
		outerFraction: (Time millisecondClockValue / 200) sin + 1 / 2 * (1 - 0.8) + 0.8.
	
	self color: (Color
		h: (Time millisecondClockValue / 5000) sin + 1 / 2 * 360
		s: 0.8
		v: self color brightness).