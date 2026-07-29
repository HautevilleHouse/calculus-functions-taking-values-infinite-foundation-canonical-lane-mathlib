import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

def gateClosed (A : ExtendedRealAdmissibleObject) : Prop :=
  A.evidence.orderTopClosed ∧ A.evidence.addCommMonoidClosed ∧ A.limitEvidence.limitUniqueClosed

theorem gate_from_admissible_class (A : ExtendedRealAdmissibleObject) :
    gateClosed A := by
  exact And.intro A.evidence.orderTopClosed (And.intro A.evidence.addCommMonoidClosed A.limitEvidence.limitUniqueClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
