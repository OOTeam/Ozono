as yet unclassified
testChangeRefenceFromWS
	| referenceName reference |
	"Creamos un objeto, con su referencia, y a traves de WS tratamos que la referencia apunte a otro objeto (4)"
	referenceName := 'pepita'.	"Nombre de la  referencia"
	lessonModel createVariable: referenceName.
	reference := lessonModel selectedItem.
	self assert: reference name = referenceName.	"El nombre tiene que ser correcto"
	self assert: reference pointsTo class = OBMetaObject.	"En principio tiene que apuntar al metaObject del objeto nuevo"
	self executeOnWorkspace: workspace code: 'pepita := 4.'.	"Codigo que hace que la referencia apunte a 4"
	self assert: reference pointsTo baseObject  = 4	"Ahora deberia apuntar a 4"