as yet unclassified
solutionPart1 

	| dict doubleCount tripleCount |
	
	doubleCount := 0.
	tripleCount := 0.
	
	input do: [ :line |
		dict := self letterCounts: line.
		
		(dict values includes: 2) ifTrue: [
			doubleCount := doubleCount + 1 ].
		
		(dict values includes: 3) ifTrue: [ 
			tripleCount := tripleCount + 1 ] ].
	
	^ doubleCount * tripleCount