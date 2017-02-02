view
createObjectDiagramTab
	| hSepFrac panel scrollPane |
	scrollPane := ScrollPane new.
	diagram := self lesson objectDiagram. 
	scrollPane scroller addMorph: diagram diagramMorph.
	hSepFrac := 0.45.
	panel := PanelMorph new
		color: (Color gray);
		changeProportionalLayout;
		addMorph: (scrollPane )
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)).
	^panel.