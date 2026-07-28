import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure AutomorphismGroupPackage (G : Type u) [Group G] where
  autGroup : Type u
  groupStructure : Group autGroup
  actionOnG : autGroup → G → G
  identityAction : ∀ g : G, actionOnG 1 g = g
  compositionAction : ∀ (a b : autGroup) (g : G), actionOnG (a * b) g = actionOnG a (actionOnB b g)

def AutGroupClosed {G : Type u} [Group G] (P : AutomorphismGroupPackage G) : Prop :=
  True

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
