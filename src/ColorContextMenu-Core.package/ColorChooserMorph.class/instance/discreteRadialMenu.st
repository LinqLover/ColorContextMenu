menus
discreteRadialMenu

	^ self buildDiscreteMenu: [RadialMenuMorph new
		target: self;
		innerFraction: 0.35;
		yourself]