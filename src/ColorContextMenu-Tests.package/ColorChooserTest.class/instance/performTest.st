running
performTest

	^ Preferences setPreference: #menuKeyboardControl toValue: false during: [
		super performTest]