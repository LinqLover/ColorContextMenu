baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'MorphicTestingFramework' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages';
					loads: #('Core')].
			
			spec
				package: 'ColorContextMenu-Core';
				package: 'ColorContextMenu-Tests' with: [
					spec requires: #(default 'MorphicTestingFramework')].
			
			spec
				group: 'default' with: #('ColorContextMenu-Core');
				group: 'tests' with: #('ColorContextMenu-Tests')].