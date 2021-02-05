toolbuilder
buildHeaderButtons: aBuilder

	^ {
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Pop-up menu';
			action: #toggleModePopUp;
			state: #isModePopUp;
			yourself.
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Radial menu (discrete)';
			action: #toggleModeDiscrete;
			state: #isModeDiscrete;
			yourself.
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Radial menu (continuous)';
			action: #toggleModeContinuous;
			state: #isModeContinuous;
			enabled: false
			yourself
	}