import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFoundationPrelim

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure LimitPackage where
  function : ExtendedValuedFunction
  limitPoint : ExtendedReal
  epsilonDeltaCondition : Prop

def LimitPackageWitness (L : LimitPackage) : Prop :=
  LimitWitnessClosed L.function

structure LimitEvidence (L : LimitPackage) where
  epsilonDeltaConditionClosed : L.epsilonDeltaCondition

def LimitClosed (L : LimitPackage) : Prop :=
  LimitPackageWitness L

theorem limit_closed_from_evidence (L : LimitPackage) (E : LimitEvidence L) :
    LimitClosed L := by
  exact E.epsilonDeltaConditionClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse