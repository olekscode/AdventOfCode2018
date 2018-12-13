as yet unclassified
solutionPart2

	| frequency history index |
	
	frequency := 0.
	history := OrderedCollection new.
	index := 0.
	
	[ history includes: frequency ] whileFalse: [ 
		history add: frequency.
		frequency := frequency + (input at: (index % input size + 1)).
		index := index + 1. ].
	
	^ frequency