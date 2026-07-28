import HautevilleHouse.AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.AlgebraicStructurePackage

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure IsomorphismTheoremPackage {P : AlgebraicStructurePackage} (A : AlgebraicStructureEvidence P) where
  firstIsomorphismTheorem : Prop
  secondIsomorphismTheorem : Prop
  thirdIsomorphismTheorem : Prop
  correspondenceTheorem : Prop

structure IsomorphismTheoremEvidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (I : IsomorphismTheoremPackage A) where
  firstIsomorphismTheoremClosed : I.firstIsomorphismTheorem
  secondIsomorphismTheoremClosed : I.secondIsomorphismTheorem
  thirdIsomorphismTheoremClosed : I.thirdIsomorphismTheorem
  correspondenceTheoremClosed : I.correspondenceTheorem

def IsomorphismTheoremClosed {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (I : IsomorphismTheoremPackage A) : Prop :=
  I.firstIsomorphismTheorem ∧ I.secondIsomorphismTheorem ∧ I.thirdIsomorphismTheorem ∧ I.correspondenceTheorem

theorem isomorphism_theorem_closed_from_evidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (I : IsomorphismTheoremPackage A) (E : IsomorphismTheoremEvidence I) : IsomorphismTheoremClosed I := by
  exact And.intro E.firstIsomorphismTheoremClosed
    (And.intro E.secondIsomorphismTheoremClosed
      (And.intro E.thirdIsomorphismTheoremClosed E.correspondenceTheoremClosed))

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse