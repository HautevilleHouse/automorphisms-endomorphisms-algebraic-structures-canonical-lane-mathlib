import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure StructureDecompositionPackage where
  structureType : Type u
  decomposition : Type v
  indecomposableComponents : List (Type u)
  uniqueness : Prop
  existence : Prop
  structureDecompositionClosedDef : structureDecompositionClosed (object := ⟨structureType, ?_, ?_, ?_, ?_, ?_⟩)

structure StructureDecompositionEvidence (S : StructureDecompositionPackage) where
  uniquenessClosed : S.uniqueness
  existenceClosed : S.existence

def StructureDecompositionClosed (S : StructureDecompositionPackage) : Prop :=
  S.uniqueness ∧ S.existence

theorem structure_decomposition_closed_from_evidence (S : StructureDecompositionPackage) (E : StructureDecompositionEvidence S) : StructureDecompositionClosed S :=
  And.intro E.uniquenessClosed E.existenceClosed

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse