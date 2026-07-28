import AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AutomorphismPackage (A : AlgebraicAdmittedObject) where
  automorphismGroupA : Type u
  groupOperation : automorphismGroupA → automorphismGroupA → automorphismGroupA
  identityElement : automorphismGroupA
  inverseOperation : automorphismGroupA → automorphismGroupA
  groupAxioms : Prop
  groupAxiomsClosed : groupAxioms

structure AutomorphismEvidence (A : AlgebraicAdmittedObject) (P : AutomorphismPackage A) where
  groupAxiomsVerified : P.groupAxioms

def AutomorphismClosed (A : AlgebraicAdmittedObject) (P : AutomorphismPackage A) : Prop :=
  P.groupAxioms

theorem automorphism_closed_from_evidence (A : AlgebraicAdmittedObject) (P : AutomorphismPackage A)
    (E : AutomorphismEvidence A P) : AutomorphismClosed A P := by
  exact E.groupAxiomsVerified

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
