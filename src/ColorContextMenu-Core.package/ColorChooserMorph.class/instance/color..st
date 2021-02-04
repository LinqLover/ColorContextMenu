accessing
color: aColor

	super color: aColor.
	self triggerEvent: #newColor with: self color.