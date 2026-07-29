import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFunctionSpace

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteIntegrationPackage (P : InfiniteFunctionSpacePackage) where
  measure : MeasureTheory.Measure P.domainType
  integral : (P.domainType → P.codomainType) → P.codomainType
  linearity : Prop
  dominatedConvergence : Prop

def InfiniteIntegrationClosed {P : InfiniteFunctionSpacePackage} (I : InfiniteIntegrationPackage P) : Prop :=
  I.linearity ∧ I.dominatedConvergence

structure InfiniteIntegrationEvidence {P : InfiniteFunctionSpacePackage} (I : InfiniteIntegrationPackage P) where
  linearityClosed : I.linearity
  dominatedConvergenceClosed : I.dominatedConvergence

theorem infinite_integration_closed_from_evidence
    {P : InfiniteFunctionSpacePackage} (I : InfiniteIntegrationPackage P)
    (E : InfiniteIntegrationEvidence I) : InfiniteIntegrationClosed I := by
  exact And.intro E.linearityClosed E.dominatedConvergenceClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse