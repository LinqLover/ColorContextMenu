event handling
yellowButtonActivity: shiftState

	| menu |
	menu := self contextMenu.
	menu popUpInWorld: self currentWorld.