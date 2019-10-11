Class {
	#name : #FamixTWithInheritancesTest,
	#superclass : #TestCase,
	#traits : 'TFamixTWithInheritancesTest',
	#classTraits : 'TFamixTWithInheritancesTest classTrait',
	#category : #'Famix-Tests-Tests'
}

{ #category : #overrides }
FamixTWithInheritancesTest >> setUp [
super setUp.
	model := FamixModel new.
self entity: (MooseEntity new copyWithTalent:FamixTWithInheritances).
self entity class initializeSlots: self entity.
model add: entity. 
]