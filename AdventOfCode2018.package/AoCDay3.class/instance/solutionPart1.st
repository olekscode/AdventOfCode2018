as yet unclassified
solutionPart1

	| sumOfMatrices conditionMatrix |
	
	sumOfMatrices := self inputMatrices sum.
	conditionMatrix := sumOfMatrices collect:
		[ :x | x > 1 ifTrue: 1 ifFalse: 0 ].
	
	^ conditionMatrix sum sum