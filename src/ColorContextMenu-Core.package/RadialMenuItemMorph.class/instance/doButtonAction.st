button
doButtonAction

	self action ifNotNil: [:evaluable |
		evaluable cull: self target].
	self triggerEvent: #invokeItem with: self.