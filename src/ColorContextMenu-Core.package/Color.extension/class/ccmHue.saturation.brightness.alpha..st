*ColorContextMenu-Core-instance creation
ccmHue: hue saturation: saturation brightness: brightness alpha: alpha

	^ self h: hue * 360 s: (saturation max: 0.005) v: (brightness max: 0.005) alpha: alpha