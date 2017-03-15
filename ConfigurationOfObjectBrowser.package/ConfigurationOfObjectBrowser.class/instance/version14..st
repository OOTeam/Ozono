versions
version14: spec 
    <version: '1.4' imports: #('1.4-baseline')>
	spec for: #common do:[
		spec blessing: #development.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.424'.

		spec package: 'MinimalConnectors-ConnectableShapes' with:'MinimalConnectors-ConnectableShapes-GuillermoPolito.19'.
		spec package: 'MinimalConnectors-CurvesAndArrows' with: 'MinimalConnectors-CurvesAndArrows-carlaGriggio.8'.
		spec package: 'MinimalConnectors-Connections' with: 'MinimalConnectors-Connections-GuillermoPolito.9'.
				
		spec package: 'SUML-ObjectDiagramModel' with: 'SUML-ObjectDiagramModel-GuillermoPolito.20'.
		spec package: 'SUML-ClassDiagramModel' with: 'SUML-ClassDiagramModel-GuillermoPolito.22'.
		spec package: 'SUML-DiagramDrawing' with:'SUML-DiagramDrawing-GuillermoPolito.29'.
		spec package: 'SUML-SequenceDiagramModel' with:'SUML-SequenceDiagramModel-carlaGriggio.1'.
		spec package: 'SUML-Tools' with:'SUML-Tools-carlaGriggio.36'.
	].