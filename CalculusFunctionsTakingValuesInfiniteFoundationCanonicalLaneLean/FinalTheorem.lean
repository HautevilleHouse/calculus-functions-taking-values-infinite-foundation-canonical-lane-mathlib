import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

def ConstrainedInfiniteFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_infinite_function_endgame (A : AdmissibleClass) :
    ConstrainedInfiniteFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse