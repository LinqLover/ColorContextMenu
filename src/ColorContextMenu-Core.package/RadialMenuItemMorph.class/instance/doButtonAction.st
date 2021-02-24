button
doButtonAction

	self subMenu ifNotNil: [:menuOrEvaluable |
		^ self openSubmenu: menuOrEvaluable].
	
	self action ifNotNil: [:evaluable |
		evaluable cull: self target].
	self triggerEvent: #invokeItem with: self.