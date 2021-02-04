toolbuilder
buildHeader: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: #buildHeaderButtons:;
		yourself