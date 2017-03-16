ui-actions
menu: aMenu

	^aMenu addList: (OrderedCollection with: (Array braceWith: 'Vaciar papelera' translated with: #runGarbageCollector))