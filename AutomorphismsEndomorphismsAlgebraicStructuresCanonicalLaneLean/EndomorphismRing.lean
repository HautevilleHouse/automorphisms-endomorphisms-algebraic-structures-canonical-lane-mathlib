import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure EndomorphismRingPackage where
  structureType : Type u
  endomorphismRing : Type v
  ringStructure : Prop
  moduleAction : Prop
  idempotents : Prop
  endomorphismRingClosedDef : endomorphismRingClosed (object := ⟨structureType, ?_, endomorphismRing, ?_, ?_, ?_⟩)

structure EndomorphismRingEvidence (E : EndomorphismRingPackage) where
  ringStructureClosed : E.ringStructure
  moduleActionClosed : E.moduleAction
  idempotentsClosed : E.idempotents

def EndomorphismRingClosed (E : EndomorphismRingPackage) : Prop :=
  E.ringStructure ∧ E.moduleAction ∧ E.idempotents

theorem endomorphism_ring_closed_from_evidence (E : EndomorphismRingPackage) (Ev : EndomorphismRingEvidence E) : EndomorphismRingClosed E :=
  And.intro Ev.ringStructureClosed (And.intro Ev.moduleActionClosed Ev.idempotentsClosed)

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse