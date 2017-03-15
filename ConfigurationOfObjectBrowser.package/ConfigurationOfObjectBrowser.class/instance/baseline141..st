baselines
baseline141: spec 
    <version: '1.4.1-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/Guille/LOOP/main'.
		spec
			project: 'smallUML' with: [ spec className: 'ConfigurationOfSmallUML'; 
											loads: #('default' );
											file: 'ConfigurationOfSmallUML';
											repository: 'http://smalltalkhub.com/mc/Guille/SmallUml/main'. ];
			package: 'ObjectBrowser' with: [ spec requires: #( 'smallUML' 'SUML-ObjectDiagramModel') ].
			
		spec package: 'SUML-ObjectDiagramModel' with: [ spec requires: #( 'smallUML' ) ].
		spec group: 'default' with: #( 'ObjectBrowser' ).
		].