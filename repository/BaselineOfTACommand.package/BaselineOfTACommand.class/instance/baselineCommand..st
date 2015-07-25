baselines
baselineCommand: spec
	spec
		for: #common
		do: [ 
			spec package: 'TA-Command'.
			spec package: 'TA-Tests-Promise-GemStone' with: #('TA-Promise-GemStone').
			spec
				group: 'Command Core' with: #('TA-Command');
				group: 'Command Tests' with: #('TA-Tests-Command') ].
	spec
		for: #common
		do: [ 
			spec
				group: 'default' with: #('development');
				group: 'development' with: #('Command Core' 'Command Tests');
				group: 'deploy' with: #('Command Core') ]