accessing
subMenuCollections

	| menuCrearColeccion |
	menuCrearColeccion := MenuMorph new target: self; yourself .
	menuCrearColeccion add:'set' selector: #createSet.
	menuCrearColeccion add:'bag' selector: #createBag.
	menuCrearColeccion add:'ordered' selector: #createOrdered.
	menuCrearColeccion add:'sorted' selector: #createSorted.
	menuCrearColeccion add:'dictionary' selector: #createDictionary.
	^menuCrearColeccion.