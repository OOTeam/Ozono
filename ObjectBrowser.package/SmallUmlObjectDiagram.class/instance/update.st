as yet unclassified
update
	| graph |
	graph := lesson buildGraph.
	self diagram updateFromGraph: graph.
	board update.