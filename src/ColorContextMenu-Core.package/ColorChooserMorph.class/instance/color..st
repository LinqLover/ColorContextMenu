accessing
color: aColor

	super color: aColor.
	
	self labelGroups flattened do: [:attribute | self changed: attribute].
	self triggerEvent: #newColor with: self color.