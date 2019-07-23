Class {
	#name : #FamixTMethodTest,
	#superclass : #TestCase,
	#traits : 'TFamixTMethodTest',
	#classTraits : 'TFamixTMethodTest classTrait',
	#category : #'Famix-Tests-Tests'
}

{ #category : #overrides }
FamixTMethodTest >> setUp [
super setUp.
	model := MooseModel new metamodel: FamixGenerator metamodel.
self entity: (MooseEntity new copyWithTalent:FamixTMethod).
self entity class initializeSlots: self entity.
model add: entity. 
]