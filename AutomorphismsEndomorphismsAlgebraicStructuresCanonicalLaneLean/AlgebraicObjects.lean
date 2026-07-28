import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AlgebraicSpace where
  carrier : Type u
  str : Type v

structure AlgebraicAdmittedObject where
  space : AlgebraicSpace
  isGroup : Prop
  isRing : Prop
  isField : Prop
  automorphismGroupDefined : Prop
  endomorphismRingDefined : Prop
  conclusion : automorphismGroupDefined ∧ endomorphismRingDefined

structure AlgebraicEndgameState where
  object : AlgebraicAdmittedObject

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.automorphismGroupDefined ∧ O.endomorphismRingDefined

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse