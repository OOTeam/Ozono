instance creation
onLesson: aLesson forClass: aClass

	^ self new 
			lesson: aLesson;
			class: aClass;
			yourself