import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AlgebraicStructurePackage where
  underlyingSet : Type u
  operations : List (Type u → Type u)
  axioms : Prop
  automorphismGroupDefined : Prop
  endomorphismMonoidDefined : Prop

structure AlgebraicStructureEvidence (P : AlgebraicStructurePackage) where
  axiomsClosed : P.axioms
  automorphismGroupDefinedClosed : P.automorphismGroupDefined
  endomorphismMonoidDefinedClosed : P.endomorphismMonoidDefined

def AlgebraicStructureClosed (P : AlgebraicStructurePackage) : Prop :=
  P.axioms ∧ P.automorphismGroupDefined ∧ P.endomorphismMonoidDefined

theorem algebraic_structure_closed_from_evidence (P : AlgebraicStructurePackage)
    (E : AlgebraicStructureEvidence P) : AlgebraicStructureClosed P := by
  exact And.intro E.axiomsClosed
    (And.intro E.automorphismGroupDefinedClosed E.endomorphismMonoidDefinedClosed)

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse