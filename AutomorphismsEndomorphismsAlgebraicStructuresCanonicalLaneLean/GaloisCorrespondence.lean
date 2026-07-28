import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure GaloisExtensionPackage (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L] where
  automorphismGroup : Type w
  groupStructure : Group automorphismGroup
  fixedField : Subfield L
  intermediateFields : Set (Subfield L)
  galoisCorrespondence : Prop
  galoisCorrespondenceTerm : galoisCorrespondence

def GaloisCorrespondenceClosed (K : Type u) [Field K] (L : Type v) [Field L] [Algebra K L] (P : GaloisExtensionPackage K L) : Prop :=
  P.galoisCorrespondence

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
