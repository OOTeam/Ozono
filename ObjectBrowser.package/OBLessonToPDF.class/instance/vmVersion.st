calculated
vmVersion
	| ver i |
	ver := Smalltalk vm version.
	i := ver indexOfSubCollection: 'Jenkins'.
	^ (ver last: ver size - i + 1) trim