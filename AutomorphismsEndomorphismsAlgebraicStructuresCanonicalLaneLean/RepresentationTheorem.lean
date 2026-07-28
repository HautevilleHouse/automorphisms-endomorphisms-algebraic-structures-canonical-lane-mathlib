import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure RepresentationTheoremPackage where
  sourceStructure : Type u
  targetCategory : Type v
  functor : Type w
  faithfulness : Prop
  fullness : Prop
  representationTheoremClosedDef : representationTheoremClosed (object := ⟨sourceStructure, ?_, ?_, ?_, ?_, ?_⟩)

structure RepresentationTheoremEvidence (R : RepresentationTheoremPackage) where
  faithfulnessClosed : R.faithfulness
  fullnessClosed : R.fullness

def RepresentationTheoremClosed (R : RepresentationTheoremPackage) : Prop :=
  R.faithfulness ∧ R.fullness

theorem representation_theorem_closed_from_evidence (R : RepresentationTheoremPackage) (E : RepresentationTheoremEvidence R) : RepresentationTheoremClosed R :=
  And.intro E.faithfulnessClosed E.fullnessClosed

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse