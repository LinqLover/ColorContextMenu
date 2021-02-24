button
openSubmenu: menuOrEvaluable

	| subMenu outerRadius |
	(previousSubmenus ifNotNil: [previousSubmenus at: menuOrEvaluable ifAbsent: [nil]]) ifNotNil: [:previousMenu |
		previousMenu owner == self ifTrue: [
			^ previousMenu delete]].
	
	subMenu := (menuOrEvaluable isMorph and: [menuOrEvaluable isRadialMenuMorph])
		ifTrue: [menuOrEvaluable]
		ifFalse: [menuOrEvaluable cull: self target].
	outerRadius := (self ownerMenu ifNil: [self]) outerRadius.
	subMenu
		innerRadius: outerRadius outerRadius: outerRadius * 2 - self innerRadius;
		center: self center.
	subMenu
		centerAngle: self centerAngle
		angleWidth: Float pi / 2.
	self addMorph: subMenu.
	
	(previousSubmenus ifNil: [previousSubmenus := WeakIdentityKeyDictionary new])
		at: menuOrEvaluable put: subMenu.