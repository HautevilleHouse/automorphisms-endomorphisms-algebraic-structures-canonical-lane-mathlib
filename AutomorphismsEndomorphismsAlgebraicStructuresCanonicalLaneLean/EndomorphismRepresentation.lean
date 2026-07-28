import AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure EndomorphismPackage (A : AlgebraicAdmittedObject) where
  endomorphismRingA : Type u
  addition : endomorphismRingA → endomorphismRingA → endomorphismRingA
  multiplication : endomorphismRingA → endomorphismRingA → endomorphismRingA
  zeroElement : endomorphismRingA
  oneElement : endomorphismRingA
  ringAxioms : Prop
  ringAxiomsClosed : ringAxioms

structure EndomorphismEvidence (A : AlgebraicAdmittedObject) (P : EndomorphismPackage A) where
  ringAxiomsVerified : P.ringAxioms

def EndomorphismClosed (A : AlgebraicAdmittedObject) (P : EndomorphismPackage A) : Prop :=
  P.ringAxioms

theorem endomorphism_closed_from_evidence (A : AlgebraicAdmittedObject) (P : EndomorphismPackage A)
    (E : EndomorphismEvidence A P) : EndomorphismClosed A P := by
  exact E.ringAxiomsVerified

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
