import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AlgebraicClosurePackage (F : Type u) [Field F] where
  algebraicClosure : Type v
  fieldStructure : Field algebraicClosure
  embedding : F → algebraicClosure
  algebraicExtension : Prop
  automorphismExtension : Prop
  automorphismExtensionTerm : automorphismExtension

def AlgebraicClosureClosed {F : Type u} [Field F] (P : AlgebraicClosurePackage F) : Prop :=
  P.automorphismExtension

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
