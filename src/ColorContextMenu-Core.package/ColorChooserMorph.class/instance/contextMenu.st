menus
contextMenu

	^ self buildDiscreteMenu: [MenuMorph new
		defaultTarget: self;
		yourself]