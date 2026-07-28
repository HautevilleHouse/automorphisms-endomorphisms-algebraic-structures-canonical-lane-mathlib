import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

structure InnerAutomorphismGroupPackage (G : Type u) [Group G] where
  innGroup : Type u
  groupStructure : Group innGroup
  conjugationMap : G → innGroup
  kernel : Subgroup G
  firstIsomorphismTheorem : Prop
  firstIsomorphismTheoremTerm : firstIsomorphismTheorem

def InnerAutClosed {G : Type u} [Group G] (P : InnerAutomorphismGroupPackage G) : Prop :=
  P.firstIsomorphismTheorem

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
