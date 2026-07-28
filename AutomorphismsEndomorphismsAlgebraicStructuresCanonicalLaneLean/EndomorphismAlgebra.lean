import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure EndomorphismAlgebraPackage (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  endRing : Type w
  ringStructure : Ring endRing
  actionOnM : endRing → M → M
  identityAction : ∀ x : M, actionOnM 1 x = x
  compositionAction : ∀ (a b : endRing) (x : M), actionOnM (a * b) x = actionOnM a (actionOnM b x)
  additionAction : ∀ (a b : endRing) (x : M), actionOnM (a + b) x = actionOnM a x + actionOnM b x

def EndAlgebraClosed {R : Type u} [CommRing R] {M : Type v} [AddCommGroup M] [Module R M] (P : EndomorphismAlgebraPackage R M) : Prop :=
  True

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
