menus
buildRadialMenuContinuous: continuous

	^ self
		buildMenu: [RadialMenuMorph new
			target: self;
			innerFraction: 0.35;
			yourself]
		continuous: continuous