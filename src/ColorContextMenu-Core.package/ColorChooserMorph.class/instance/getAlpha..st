accessing
getAlpha: aFraction

	^ self referenceColorForItems ccmWithLightness: 1 - (aFraction / 2)