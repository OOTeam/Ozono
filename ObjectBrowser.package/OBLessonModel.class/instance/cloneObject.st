showing
cloneObject
	self createObject: [ :objectName | 
			| clone |
			clone := self selectedObjectBrowserVariable pointsTo clone.
			lesson addObject: clone.
			self createVariable: objectName referencingTo: clone ]