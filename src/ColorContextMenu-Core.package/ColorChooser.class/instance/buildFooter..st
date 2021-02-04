toolbuilder
buildFooter: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		getText: #colorText;
		setText: #colorText:;
		yourself