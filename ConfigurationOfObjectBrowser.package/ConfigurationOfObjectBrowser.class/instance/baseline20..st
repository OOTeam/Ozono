baselines
baseline20: spec 
    <version: '2.0-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/Uqbar/Ozono/main'.
		spec
			project: 'smallUML' with: [ spec className: 'ConfigurationOfSmallUML'; 
											loads: #('default' );
											file: 'ConfigurationOfSmallUML';
											versionString: '1.2';
											repository: 'http://smalltalkhub.com/mc/Uqbar/SmallUml/main'. ];
			package: 'ObjectBrowser' with: [ spec requires: #( 'smallUML' 'SUML-ObjectDiagramModel') ].
			
		spec package: 'SUML-ObjectDiagramModel' with: [ spec repository: 'http://smalltalkhub.com/mc/Uqbar/SmallUml/main'.
			spec requires: #( 'smallUML' ) ].
		spec group: 'default' with: #( 'ObjectBrowser' ).
		]..