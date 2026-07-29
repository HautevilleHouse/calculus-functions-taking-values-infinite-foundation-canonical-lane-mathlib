import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ConvergenceConditions

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure LimitExistencePackage (O : CalculusFunctionAdmittedObject) where
  finiteLimitExists : Prop
  infiniteLimitExists : Prop
  limitUniqueness : Prop
  limitStability : Prop

structure LimitExistenceEvidence (O : CalculusFunctionAdmittedObject) (L : LimitExistencePackage O) where
  finiteLimitExistsClosed : L.finiteLimitExists
  infiniteLimitExistsClosed : L.infiniteLimitExists
  limitUniquenessClosed : L.limitUniqueness
  limitStabilityClosed : L.limitStability

def LimitExistenceClosed (O : CalculusFunctionAdmittedObject) (L : LimitExistencePackage O) : Prop :=
  L.finiteLimitExists ∧ L.infiniteLimitExists ∧ L.limitUniqueness ∧ L.limitStability

theorem limit_existence_closed_from_evidence (O : CalculusFunctionAdmittedObject) (L : LimitExistencePackage O) (E : LimitExistenceEvidence O L) :
    LimitExistenceClosed O L := by
  exact And.intro E.finiteLimitExistsClosed
    (And.intro E.infiniteLimitExistsClosed
      (And.intro E.limitUniquenessClosed E.limitStabilityClosed))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse