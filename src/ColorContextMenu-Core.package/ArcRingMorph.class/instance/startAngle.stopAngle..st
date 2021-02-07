accessing
startAngle: radialNumberStart stopAngle: radialNumberStop

	startAngle := radialNumberStart \\ (Float pi * 2).
	stopAngle := radialNumberStop \\ (Float pi * 2).
	
	self layoutChanged; changed.