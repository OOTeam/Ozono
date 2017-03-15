versions
version121: spec 
    <version: '1.2.1' imports: #('1.2-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec project: 'smallUML' with: '1.1.3'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.412'.
		spec package: 'Graphics-Primitives' with: 'Graphics-Primitives-DeboraFortini.49'.
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-DeboraFortini.19'.
		spec package: 'SUML-ClassDiagramModel' with: 'SUML-ClassDiagramModel-DeboraFortini.21'.
	].