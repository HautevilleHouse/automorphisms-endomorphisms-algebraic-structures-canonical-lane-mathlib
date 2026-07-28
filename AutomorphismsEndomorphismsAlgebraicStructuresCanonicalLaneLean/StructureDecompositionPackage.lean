import HautevilleHouse.AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.AutomorphismEndomorphismPackage

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure StructureDecompositionPackage {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    {Apkg : AutomorphismPackage A} {Epkg : EndomorphismPackage A} where
  decompositionIntoIrreducibles : Prop
  invariantSubspaceDecomposition : Prop
  primaryDecomposition : Prop

structure StructureDecompositionEvidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    {Apkg : AutomorphismPackage A} {Epkg : EndomorphismPackage A}
    (D : StructureDecompositionPackage Apkg Epkg) where
  decompositionIntoIrreduciblesClosed : D.decompositionIntoIrreducibles
  invariantSubspaceDecompositionClosed : D.invariantSubspaceDecomposition
  primaryDecompositionClosed : D.primaryDecomposition

def StructureDecompositionClosed {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    {Apkg : AutomorphismPackage A} {Epkg : EndomorphismPackage A}
    (D : StructureDecompositionPackage Apkg Epkg) : Prop :=
  D.decompositionIntoIrreducibles ∧ D.invariantSubspaceDecomposition ∧ D.primaryDecomposition

theorem structure_decomposition_closed_from_evidence {P : AlgebraicStructurePackage} {A : AlgebraicStructureEvidence P}
    {Apkg : AutomorphismPackage A} {Epkg : EndomorphismPackage A}
    (D : StructureDecompositionPackage Apkg Epkg) (E : StructureDecompositionEvidence D) :
    StructureDecompositionClosed D := by
  exact And.intro E.decompositionIntoIrreduciblesClosed
    (And.intro E.invariantSubspaceDecompositionClosed E.primaryDecompositionClosed)

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse