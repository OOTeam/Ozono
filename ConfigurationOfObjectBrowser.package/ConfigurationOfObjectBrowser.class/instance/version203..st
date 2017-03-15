versions
version203: spec 
    <version: '2.0.3' imports: #('2.0-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GiselaDecuzzi.506'. 

		spec project: 'smallUML' with: '1.1.4'.
				
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.21'.
	].