updating
updateSubmenus

	self subMenus ifEmpty: [^ self].
	
	self closeSubmenus.
	self openSubmenu: self subMenu.