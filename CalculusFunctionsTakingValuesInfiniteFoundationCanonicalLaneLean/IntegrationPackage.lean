import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ContinuityBridge

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure IntegrationPackage where
  function : ExtendedValuedFunction
  integralValue : ExtendedReal
  integralCondition : Prop

def IntegrationPackageWitness (I : IntegrationPackage) : Prop :=
  I.integralCondition

structure IntegrationEvidence (I : IntegrationPackage) where
  integralConditionClosed : I.integralCondition

def IntegrationClosed (I : IntegrationPackage) : Prop :=
  I.integralCondition

theorem integration_closed_from_evidence (I : IntegrationPackage) (E : IntegrationEvidence I) :
    IntegrationClosed I := by
  exact E.integralConditionClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse