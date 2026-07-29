import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.LimitExistence

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteValueAnalysisPackage (O : CalculusFunctionAdmittedObject) where
  divergenceBehavior : Prop
  asymptoticExpansion : Prop
  eulerCharacteristic : Prop
  regularization : Prop

structure InfiniteValueAnalysisEvidence (O : CalculusFunctionAdmittedObject) (I : InfiniteValueAnalysisPackage O) where
  divergenceBehaviorClosed : I.divergenceBehavior
  asymptoticExpansionClosed : I.asymptoticExpansion
  eulerCharacteristicClosed : I.eulerCharacteristic
  regularizationClosed : I.regularization

def InfiniteValueAnalysisClosed (O : CalculusFunctionAdmittedObject) (I : InfiniteValueAnalysisPackage O) : Prop :=
  I.divergenceBehavior ∧ I.asymptoticExpansion ∧ I.eulerCharacteristic ∧ I.regularization

theorem infinite_value_analysis_closed_from_evidence (O : CalculusFunctionAdmittedObject) (I : InfiniteValueAnalysisPackage O) (E : InfiniteValueAnalysisEvidence O I) :
    InfiniteValueAnalysisClosed O I := by
  exact And.intro E.divergenceBehaviorClosed
    (And.intro E.asymptoticExpansionClosed
      (And.intro E.eulerCharacteristicClosed E.regularizationClosed))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse