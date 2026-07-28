import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AutomorphismGroupPackage where
  structureType : Type u
  automorphismGroup : Type v
  groupStructure : Prop
  innerAutomorphism : Prop
  outerAutomorphism : Prop
  automorphismGroupClosedDef : automorphismGroupClosed (object := ⟨structureType, automorphismGroup, ?_, ?_, ?_⟩)

structure AutomorphismGroupEvidence (A : AutomorphismGroupPackage) where
  groupStructureClosed : A.groupStructure
  innerAutomorphismClosed : A.innerAutomorphism
  outerAutomorphismClosed : A.outerAutomorphism

def AutomorphismGroupClosed (A : AutomorphismGroupPackage) : Prop :=
  A.groupStructure ∧ A.innerAutomorphism ∧ A.outerAutomorphism

theorem automorphism_group_closed_from_evidence (A : AutomorphismGroupPackage) (E : AutomorphismGroupEvidence A) : AutomorphismGroupClosed A :=
  And.intro E.groupStructureClosed (And.intro E.innerAutomorphismClosed E.outerAutomorphismClosed)

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse