versions
version20: spec 
    <version: '2.0' imports: #('2.0-baseline')>
	spec for: #common do:[
		spec blessing: #development.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.454'.

		spec project: 'smallUML' with: '1.1.4'.
				
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.21'.
	].