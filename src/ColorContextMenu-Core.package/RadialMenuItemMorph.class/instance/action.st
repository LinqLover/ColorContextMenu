accessing
action
	"Can be a block, symbol, or message send and may refer to target. See #doButtonAction."

	^ self hasSubMenu ifFalse: [action]