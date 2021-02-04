*ColorContextMenu-Core-instance creation
ccmHue: hue saturation: saturation lightness: lightness alpha: alpha

	| brightness |
	brightness := lightness + (saturation * (lightness min: 1 - lightness)).
	^ self
		ccmHue: hue
		saturation: (brightness = 0 ifTrue: [0] ifFalse: [1 - (lightness / brightness)])
		brightness: brightness
		alpha: alpha