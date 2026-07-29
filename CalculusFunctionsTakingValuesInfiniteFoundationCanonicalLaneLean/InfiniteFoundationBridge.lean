import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteCompositionClosure

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InfiniteValueFunctionSpaceClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.infiniteValueAtLimit

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse