menus
contextMenu

	^ self
		buildMenu: [MenuMorph new
			defaultTarget: self;
			yourself]
		continuous: false