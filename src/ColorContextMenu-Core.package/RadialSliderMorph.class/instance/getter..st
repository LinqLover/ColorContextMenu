accessing
getter: evaluable
	"Can be a block, symbol, or message send and may refer to target. See #doButtonAction."

	getter := evaluable.
	
	self updateValue.