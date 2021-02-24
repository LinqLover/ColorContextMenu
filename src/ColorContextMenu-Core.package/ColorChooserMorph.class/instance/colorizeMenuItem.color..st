menus - private
colorizeMenuItem: item color: aColor

	(item isKindOf: RadialMenuItemMorph)
		ifFalse: [^ item icon: (Form dotOfSize: 64 color: aColor)].
	
	item baseColor: aColor.