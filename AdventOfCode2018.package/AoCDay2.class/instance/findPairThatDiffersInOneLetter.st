as yet unclassified
findPairThatDiffersInOneLetter
	
	input allPairsDo: [ :first :second |
		(self differentLettersCountIn: first and: second) = 1
			ifTrue: [ ^ { first . second } ] ].
		
	Error signal: 'Pair was not found'.