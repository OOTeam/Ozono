versions
version13: spec 
    <version: '1.3' imports: #('1.3-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec project: 'smallUML' with: '1.1.3'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.419'.
		spec package: 'Graphics-Primitives' with: 'Graphics-Primitives-StephaneDucasse.48'.
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.20'.
		spec package: 'SUML-ClassDiagramModel' with: 'SUML-ClassDiagramModel-GuillermoPolito.22'.
	].