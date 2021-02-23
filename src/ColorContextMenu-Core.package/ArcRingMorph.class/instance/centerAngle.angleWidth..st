accessing
centerAngle: radialNumberCenter angleWidth: radialNumberWidth

	^ self
		startAngle: radialNumberCenter - (radialNumberWidth / 2)
		stopAngle: radialNumberCenter + (radialNumberWidth / 2)