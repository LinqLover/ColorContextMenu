baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'ColorContextMenu-Core';
				package: 'ColorContextMenu-Tests' with: [
					spec requires: #(default)].
			spec
				group: 'default' with: #('ColorContextMenu-Core');
				group: 'tests' with: #('ColorContextMenu-Tests')].