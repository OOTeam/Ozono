as yet unclassified
value
	"evaluo mi bloque o manejo el error"

	^ [ 
	[ 
	[ 
	block
		on: OBOperationCancelled
		do: self blockForOperationCancelled ]
		on: MessageNotUnderstood
		do: self blockForMessageNotUnderstood ]
		on: SyntaxErrorNotification
		do: self blockForSyntaxErrorNotification ]
		on: Error
		do: self blockForError