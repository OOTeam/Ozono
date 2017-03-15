baselines
baseline10: spec 
    <version: '1.0-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/ObjectBrowser'.
		spec
			project: 'smallUML' with: [ spec className: 'ConfigurationOfSmallUML'; 
											loads: #('default' );
											file: 'ConfigurationOfSmallUML';
											repository: 'http://www.squeaksource.com/smallUML'. ];
			package: 'CommandShell' with: [ spec repository: 'http://www.squeaksource.com/CommandShell'. ];
			package: 'GraphViz';
			package: 'ObjectBrowser' with: [ spec requires: #('smallUML') ].
			spec group: 'default' with: #( 'ObjectBrowser' ).
			spec group: 'graphViz' with: #( 'GraphViz' 'CommandShell' 'externalCommands' ).
		].
	spec for: #unix do: [
		spec 
			project: 'externalCommands' with: [ 
				spec className: 'ConfigurationOfOSProcess'; 
						file: 'ConfigurationOfOSProcess';
						repository: 'http://www.squeaksource.com/MetacelloRepository'.
				spec postLoadDoIt: #initializeOSProcess.
			].
		].

	spec for: #Win32 do: [
		spec
			project: 'externalCommands' with: [ 
				spec repository: 'http://www.squeaksource.com/MetacelloRepository'. 
				spec className: 'ConfigurationOfFFI'.
		]
	].