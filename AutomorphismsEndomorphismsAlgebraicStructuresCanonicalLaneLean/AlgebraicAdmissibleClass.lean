import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AlgebraicAdmittedObject where
  carrier : Type u
  algebraicStructure : String
  automorphismGroup : Type u
  endomorphismRing : Type u
  automorphismGroupStructure : Prop
  endomorphismRingStructure : Prop
  conclusion : automorphismGroupStructure ∧ endomorphismRingStructure

structure AdmissibleClass where
  object : AlgebraicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.conclusion

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
