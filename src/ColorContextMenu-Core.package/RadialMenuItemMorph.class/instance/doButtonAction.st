button
doButtonAction

	self subMenu ifNotNil: [:menuOrEvaluable |
		^ self openSubmenu: menuOrEvaluable].
	
	self action ifNotNil: [:evaluable |
		evaluable ccmValueWithEnoughArguments: {self target. self currentEvent}].
	self triggerEvent: #invokeItem with: self.