submorphs-add/remove
closeSubmenusBesides: aRadialMenuItemMorph

	self == aRadialMenuItemMorph ifTrue: [^ self].
	
	self subMenus do: [:subMenu |
		(aRadialMenuItemMorph hasOwner: subMenu)
			ifTrue: [subMenu closeSubmenusBesides: aRadialMenuItemMorph]
			ifFalse: [subMenu delete]].