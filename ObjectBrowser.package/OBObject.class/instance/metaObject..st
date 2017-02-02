accessing
metaObject: aMetaObject
	_metaObject ifNotNil: [ self error: 'No se puede cambiar el metaObject de un objeto' ].
	_metaObject := aMetaObject.