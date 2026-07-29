import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ParametricIntegrationPackage where
  measureSpace : Type u
  integrand : Type v → Type w
  integrabilityCondition : Prop
  fubiniTheorem : Prop
  dominatedConvergence : Prop

structure ParametricIntegrationEvidence
    (P : ParametricIntegrationPackage) where
  integrabilityConditionClosed : P.integrabilityCondition
  fubiniTheoremClosed : P.fubiniTheorem
  dominatedConvergenceClosed : P.dominatedConvergence

def ParametricIntegrationClosed (P : ParametricIntegrationPackage) : Prop :=
  P.integrabilityCondition ∧ P.fubiniTheorem ∧ P.dominatedConvergence

theorem parametric_integration_closed_from_evidence
    (P : ParametricIntegrationPackage)
    (E : ParametricIntegrationEvidence P) :
    ParametricIntegrationClosed P := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.fubiniTheoremClosed E.dominatedConvergenceClosed)

def bridgeFromIntegration (P : ParametricIntegrationPackage) (A : AdmissibleClass) : Prop :=
  ParametricIntegrationClosed P → bridgeClosed A

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse