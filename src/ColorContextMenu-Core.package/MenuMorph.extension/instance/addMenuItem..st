*ColorContextMenu-Core-construction-override
addMenuItem: aMenuItemMorph

	self addMorphBack: aMenuItemMorph.
	aMenuItemMorph addDependent: self.
	^ aMenuItemMorph