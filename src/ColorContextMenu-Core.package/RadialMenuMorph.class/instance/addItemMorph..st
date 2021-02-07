submorphs-add/remove
addItemMorph: aRadialMenuItemMorph

	aRadialMenuItemMorph
		layoutFrame: LayoutFrame fullFrame;
		hResizing: #spaceFill; vResizing: #spaceFill.
	self privateRegisterItem: aRadialMenuItemMorph.
	
	self addMorphBack: aRadialMenuItemMorph.
	self doRadialLayout.