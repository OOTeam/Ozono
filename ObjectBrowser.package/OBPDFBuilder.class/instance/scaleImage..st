calculated properties
scaleImage:dimensions
	| w h scaleH maxH maxW scaleW|
	w := (dimensions x as:#millimeters) value.
	h := (dimensions y as: #millimeters) value.
	maxH := 100.
	maxW := self usableWidth.
	scaleH := maxH / h.
	scaleW := maxW / w.	
	
	(scaleH > 1 and: [scaleW > 1]) 
		ifTrue:[^dimensions].
		
	scaleH < scaleW
		ifTrue:[ ^ dimensions * scaleH]
		ifFalse:[ ^ dimensions * scaleW]