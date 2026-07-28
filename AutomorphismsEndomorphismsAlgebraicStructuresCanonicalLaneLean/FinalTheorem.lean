import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.BridgeLemmas
import AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean

def ConstrainedAlgebraicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_algebraic_endgame (A : AdmissibleClass) :
    ConstrainedAlgebraicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismsEndomorphismsAlgebraicStructuresCanonicalLaneLean
end HautevilleHouse
