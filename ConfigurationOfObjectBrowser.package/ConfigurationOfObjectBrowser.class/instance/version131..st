versions
version131: spec 
    <version: '1.3.1' imports: #('1.3.1-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec project: 'smallUML' with: '1.1.3'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GiselaDecuzzi.422'.
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.20'.
		spec package: 'SUML-ClassDiagramModel' with: 'SUML-ClassDiagramModel-GuillermoPolito.22'.
	].