baselines
baseline31: spec
	<version: '3.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'git@github.com:OOTeam/Ozono.git:master'.
			spec
				project: 'smallUML'
					with: [ 
							spec
								className: 'ConfigurationOfSmallUML';
								loads: #('default');
								file: 'ConfigurationOfSmallUML';
								versionString: '1.2';
								repository: 'http://smalltalkhub.com/mc/Uqbar/SmallUml/main' ];
				project: 'artefact'
					with: [ 
							spec
								className: 'ConfigurationOfArtefact';
								loads: #('default');
								file: 'ConfigurationOfArtefact';
								versionString: '1.3';
								repository: 'http://smalltalkhub.com/mc/RMoD/Artefact/main' ];
				package: 'ObjectBrowser'
					with: [ 
							spec requires: #('smallUML' 'artefact'). ].
			spec group: 'default' with: #('ObjectBrowser') ]