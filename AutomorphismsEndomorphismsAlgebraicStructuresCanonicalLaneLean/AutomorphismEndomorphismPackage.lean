import HautevilleHouse.AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.AlgebraicStructurePackage

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AutomorphismPackage {P : AlgebraicStructurePackage} (A : AlgebraicStructureEvidence P) where
  automorphismGroup : Type u
  groupStructure : Prop
  actionOnStructure : Prop
  groupStructureClosed : groupStructure
  actionOnStructureClosed : actionOnStructure

structure AutomorphismEvidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Apkg : AutomorphismPackage A) where
  groupStructureClosed : Apkg.groupStructure
  actionOnStructureClosed : Apkg.actionOnStructure

def AutomorphismClosed {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Apkg : AutomorphismPackage A) : Prop :=
  Apkg.groupStructure ∧ Apkg.actionOnStructure

theorem automorphism_closed_from_evidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Apkg : AutomorphismPackage A) (E : AutomorphismEvidence Apkg) : AutomorphismClosed Apkg := by
  exact And.intro E.groupStructureClosed E.actionOnStructureClosed

structure EndomorphismPackage {P : AlgebraicStructurePackage} (A : AlgebraicStructureEvidence P) where
  endomorphismMonoid : Type u
  monoidStructure : Prop
  compositionStructure : Prop
  monoidStructureClosed : monoidStructure
  compositionStructureClosed : compositionStructure

structure EndomorphismEvidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Epkg : EndomorphismPackage A) where
  monoidStructureClosed : Epkg.monoidStructure
  compositionStructureClosed : Epkg.compositionStructure

def EndomorphismClosed {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Epkg : EndomorphismPackage A) : Prop :=
  Epkg.monoidStructure ∧ Epkg.compositionStructure

theorem endomorphism_closed_from_evidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    (Epkg : EndomorphismPackage A) (E : EndomorphismEvidence Epkg) : EndomorphismClosed Epkg := by
  exact And.intro E.monoidStructureClosed E.compositionStructureClosed

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse