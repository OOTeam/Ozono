as yet unclassified
doUpdate
	| graph morphGraph loopgraph |
	loopgraph := lesson buildGraph.
	graph := GraphViz new.
	graph beDirected.
	graph add: #node with: { #id->#asString }.
	loopgraph objectBrowserObjects do:[ :h |
			graph add: h with: #label->(h displayString copyReplaceAll: ' ' with: '').
		].
	loopgraph references do:[ :r |
			graph add: r from with: #label->(r from displayString copyReplaceAll: ' ' with: '').
			graph add: r to with: #label->(r to displayString copyReplaceAll: ' ' with: '').
			graph add: r from -> r to with: {#label->(r name copyReplaceAll: ' ' with: '')}.
		].
	self removeAllMorphs.
	morphGraph := graph asMorph.
	self addMorph: morphGraph.