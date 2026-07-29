import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.LimitClosure

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ContinuityPackage where
  function : ExtendedValuedFunction
  continuityCondition : Prop

def ContinuityPackageWitness (C : ContinuityPackage) : Prop :=
  C.continuityCondition

structure ContinuityEvidence (C : ContinuityPackage) where
  continuityConditionClosed : C.continuityCondition

def ContinuityClosed (C : ContinuityPackage) : Prop :=
  C.continuityCondition

theorem continuity_closed_from_evidence (C : ContinuityPackage) (E : ContinuityEvidence C) :
    ContinuityClosed C := by
  exact E.continuityConditionClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse