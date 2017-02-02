*ObjectBrowser-Diagrams
updateFromGraph: aLessonGraph
	self updateDiagramNodesFrom: aLessonGraph objects.
	self addDiagramNode: (LessonNode new object: aLessonGraph  lesson).
	self resetConnections.
	aLessonGraph references do:[:reference |
		(self diagramNodeFor: reference from) connectTo: (self diagramNodeFor: reference to) using: (ReferenceRelationship new label: reference name) ]