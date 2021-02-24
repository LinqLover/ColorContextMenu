accessing
getSaturation: aFraction
	"The mixed color is used to show a gradient from colorful to grayish"

	^ (self referenceColorForItems mixed: 0.5 with: Color gray) ccmWithSaturation: aFraction