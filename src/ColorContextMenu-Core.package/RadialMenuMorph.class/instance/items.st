accessing
items

	^ self submorphsSatisfying: [:morph | morph
		isKindOf: RadialMenuItemMorph
		orOf: RadialMenuSplitterMorph]