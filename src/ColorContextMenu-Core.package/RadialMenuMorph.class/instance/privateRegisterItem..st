private
privateRegisterItem: aRadialMenuItemMorph

	self flag: #discuss. "Edge case for top-level menus?"
	"self rootMenu == self ifFalse: [
		aRadialMenuItemMorph when: #invokeItem send: #delete to: self]."