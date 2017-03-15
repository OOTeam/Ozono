baselines
baseline14: spec 
    <version: '1.4-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/ObjectBrowser'.
		spec package: 'ObjectBrowser' with: [ spec requires: #( 'smallUML' ) ].
			
		spec package: 'SUML-Tools' with: [ spec requires: 'MinimalConnectors'.  ].
		spec package: 'SUML-DiagramDrawing' with: [ spec requires: 'MinimalConnectors'.  ].
		spec package: 'SUML-ObjectDiagramModel'.
		spec package: 'SUML-ClassDiagramModel'.
		
		spec 
			package: 'MinimalConnectors-ConnectableShapes';
			package: 'MinimalConnectors-CurvesAndArrows';
			package: 'MinimalConnectors-Connections' with: [spec requires: 'MinimalConnectors-ConnectableShapes' ].

		
		spec group: 'MinimalConnectors' with: #( 'MinimalConnectors-Connections' 'MinimalConnectors-CurvesAndArrows' 'MinimalConnectors-ConnectableShapes' ).
		spec group: 'smallUML' with: #( 'SUML-Tools' 'SUML-DiagramDrawing' 'SUML-ObjectDiagramModel' 'SUML-ClassDiagramModel' ).
		spec group: 'default' with: #( 'ObjectBrowser' ).
	].