as yet unclassified
variablesFrom: lesson equalVariablesFrom: lessonImported
	lesson variables
		with: lessonImported variables
		do: [ :v1 :v2 | 
			v1 pointsTo class = v2 pointsTo class
				ifFalse: [ ^ false ] ].
	^ true