toolbuilder
buildHeaderButtons: aBuilder

	^ {
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Expanding';
			action: #toggleModeExpanding;
			state: #isModeExpanding;
			yourself.
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Radial (discrete)';
			action: #toggleModeDiscrete;
			state: #isModeDiscrete;
			yourself.
		aBuilder pluggableRadioButtonSpec new
			model: self;
			label: 'Radial (continuous)';
			action: #toggleModeContinuous;
			state: #isModeContinuous;
			enabled: false
			yourself
	}