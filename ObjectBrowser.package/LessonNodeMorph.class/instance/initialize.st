as yet unclassified
initialize 
	super initialize.
	self color: Color transparent.
	self extent: 1000@10. 
	boundingBox := ConnectableBoundingBox new. self addMorph: boundingBox. boundingBox goBehind. 
	boundingBox borderStyle: BorderStyle thinGray.
	boundingBox fillStyle: Color white.