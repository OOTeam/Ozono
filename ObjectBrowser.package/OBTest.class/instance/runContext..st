running
runContext: aPreparedContext
	[ 
	[ aPreparedContext runCase ]
		on: TestFailure
		do: [ :signal | ^ OBTestFailure new: signal ] ]
		on: Error
		do: [ :signal | ^ OBTestError new: signal ].
	^ OBTestSuccess new