"
I am World Geodetic System standard.
"
Class {
	#name : #WGS84,
	#superclass : #Object,
	#category : #'GeoTools-MapProjection'
}

{ #category : #'standard values' }
WGS84 class >> eminorSquare [

^ ((self semiMajorAxisInMeters * self semiMajorAxisInMeters) -  (self semiMinorAxisInMeters * self semiMinorAxisInMeters)) / ((self semiMinorAxisInMeters * self semiMinorAxisInMeters)).
]

{ #category : #'standard values' }
WGS84 class >> flattening [
	"https://en.wikipedia.org/wiki/World_Geodetic_System"

	^ 1 / self inverseFlattening
]

{ #category : #'standard values' }
WGS84 class >> inverseFlattening [
	"https://en.wikipedia.org/wiki/World_Geodetic_System"

	^ 298.257223563
]

{ #category : #'standard values' }
WGS84 class >> k0 [

	^ 0.9996
]

{ #category : #'standard values' }
WGS84 class >> scaleFactor [

	^ self k0
]

{ #category : #'standard values' }
WGS84 class >> semiMajorAxisInMeters [
	"https://en.wikipedia.org/wiki/World_Geodetic_System"

	^ 6378137.0
]

{ #category : #'standard values' }
WGS84 class >> semiMinorAxisInMeters [
	"https://en.wikipedia.org/wiki/World_Geodetic_System"

	^ 6356752.314245
]
