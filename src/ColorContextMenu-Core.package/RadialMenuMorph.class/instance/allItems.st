accessing
allItems

	^ self submorphsSatisfying: [:morph | morph
		isKindOf: RadialMenuItemMorph
		orOf: RadialMenuSplitterMorph]