accessing
selectedObjectMethods
	^self selectedObject methods" collect: [ :m | ShowingMethod object: self selectedObject method: m ]".