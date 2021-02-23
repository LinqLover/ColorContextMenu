button
doButtonAction

	self action ifNotNil: [:evaluableOrSubmenu |
		self hasSubMenu ifTrue: [
			^ self openSubmenu: evaluableOrSubmenu].
		evaluableOrSubmenu cull: self target].
	self triggerEvent: #invokeItem with: self.