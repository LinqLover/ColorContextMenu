support
findMenu

	| menu |
	menu := self findTopMorph.
	([menu target] ifError: [menu defaultTarget]) class category = chooser model class category ifTrue: [
		morphsToDelete add: menu].
	
	^ self subject createWrapperFor: {menu}