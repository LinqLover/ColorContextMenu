updating
updateValue

	handle centerAngle: self startAngle
		+ (self angleWidth - handle angleWidth * (1 - self valueFraction))
		+ (handle angleWidth / 2).