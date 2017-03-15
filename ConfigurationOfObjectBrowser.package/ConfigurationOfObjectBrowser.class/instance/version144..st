versions
version144: spec 
    <version: '1.4.4' imports: #('1.4.1-baseline')>
	spec for: #common do:[
		spec blessing: #development.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.439'.

		spec project: 'smallUML' with: '1.1.4'.
				
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.21'.
	].