accessing
subMenuCollections

	| menuCrearColeccion |
	menuCrearColeccion := MenuMorph new target: self; yourself .
	menuCrearColeccion add:'set' action: #createSet.
	menuCrearColeccion add:'bag' action: #createBag.
	menuCrearColeccion add:'ordered' action: #createOrdered.
	menuCrearColeccion add:'sorted' action: #createSorted.
	menuCrearColeccion add:'dictionary' action: #createDictionary.
	^menuCrearColeccion.