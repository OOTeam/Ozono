lesson-variables
variableNamed: aByteString 

	^ self variables detect:[ :var | var name = aByteString ]