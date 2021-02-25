construction - compatibility
addRefactorings: refactorings withName: name for: aTarget
	| subMenu |
	subMenu := MenuMorph new.
	refactorings keysAndValuesDo:
		[:nameAndSelector :description |
		 subMenu add: nameAndSelector key
				    target: aTarget
				    selector: #performRefactoring:
				    argument:  nameAndSelector value.
		 subMenu balloonTextForLastItem: description].
	self add: name subMenu: subMenu