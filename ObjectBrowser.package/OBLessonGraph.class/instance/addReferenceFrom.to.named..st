adding
addReferenceFrom: aRealObject to: objectReferenced named: referenceName

	^ self references add: (OBLessonGraphReference from: aRealObject to: objectReferenced named: referenceName).