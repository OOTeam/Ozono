as yet unclassified
listKey: aChar from: view
	"Responde cuando se presiona un bot󮠥n la lista de objetos."

"	aChar == $f ifTrue: [^ self findMethod].
	aChar == $r ifTrue: [^ self recent].
	aChar == $h ifTrue: [^ self spawnHierarchy].
	aChar == $x ifTrue: [^ self removeClass].
	^ self messageListKey: aChar from: view"