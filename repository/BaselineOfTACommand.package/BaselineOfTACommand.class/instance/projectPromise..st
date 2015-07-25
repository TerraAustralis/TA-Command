baselines
projectPromise: spec
	spec
		for: #common
		do: [ 
			spec
				baseline: 'TAPromise'
				with: [ 
					spec
						repository: 'github://TerraAustralis/TA-Promise/repository';
						loads: #('default') ] ]