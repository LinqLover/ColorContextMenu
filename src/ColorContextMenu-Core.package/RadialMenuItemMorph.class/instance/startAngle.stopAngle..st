accessing
startAngle: radialNumberStart stopAngle: radialNumberStop

	super startAngle: radialNumberStart stopAngle: radialNumberStop.
	
	self updateLabelAngle.
	self subMenus do: [:menu | menu centerAngle: self centerAngle].