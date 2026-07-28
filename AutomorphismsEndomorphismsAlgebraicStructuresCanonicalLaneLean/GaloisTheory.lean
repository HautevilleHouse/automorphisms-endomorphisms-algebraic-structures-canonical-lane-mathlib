import canonicalLaneMathlib.AdmissibleClass
import Mathlib.FieldTheory.Galois.Defs

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure GaloisCorrespondencePackage where
  fieldExtension : Type u
  galoisGroup : Prop
  intermediateFields : Prop
  fixedFieldMap : Prop
  bijection : Prop

structure GaloisCorrespondenceEvidence (P : GaloisCorrespondencePackage) where
  galoisGroupClosed : P.galoisGroup
  intermediateFieldsClosed : P.intermediateFields
  fixedFieldMapClosed : P.fixedFieldMap
  bijectionClosed : P.bijection

def GaloisCorrespondenceClosed (P : GaloisCorrespondencePackage) : Prop :=
  P.galoisGroup ∧ P.intermediateFields ∧
  P.fixedFieldMap ∧ P.bijection

theorem galois_correspondence_closed_from_evidence (P : GaloisCorrespondencePackage)
    (E : GaloisCorrespondenceEvidence P) : GaloisCorrespondenceClosed P := by
  exact And.intro E.galoisGroupClosed
    (And.intro E.intermediateFieldsClosed
      (And.intro E.fixedFieldMapClosed E.bijectionClosed))

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse