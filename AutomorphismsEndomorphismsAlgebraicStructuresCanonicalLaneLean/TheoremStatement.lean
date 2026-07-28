import HautevilleHouse.AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AlgebraicAdmittedObject where
  algebraicStructure : Type
  automorphismGroup : Type
  endomorphismMonoid : Type
  automorphismGroupActing : Prop
  endomorphismMonoidActing : Prop
  conclusion : automorphismGroupActing ∧ endomorphismMonoidActing

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.automorphismGroupActing ∧ O.endomorphismMonoidActing

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse