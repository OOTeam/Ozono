baselines
baseline131: spec 
    <version: '1.3.1-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/ObjectBrowser'.
		spec
			project: 'smallUML' with: [ spec className: 'ConfigurationOfSmallUML'; 
											loads: #('default' );
											file: 'ConfigurationOfSmallUML';
											repository: 'http://www.squeaksource.com/smallUML'. ];
			package: 'ObjectBrowser' with: [ spec requires: #( 'smallUML' 'SUML-ObjectDiagramModel' 'SUML-ClassDiagramModel') ].
			
		spec package: 'SUML-ObjectDiagramModel' with: [ spec requires: #( 'smallUML' ) ].
		spec package: 'SUML-ClassDiagramModel' with: [ spec requires: #( 'smallUML' ) ].
		spec group: 'default' with: #( 'ObjectBrowser' ).
		].