diagram
buildGraph

	| graph |
	graph := OBLessonGraph new.
	self accept: graph.
	^ graph