import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFunctionSpace

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteDifferentiationPackage (P : InfiniteFunctionSpacePackage) where
  derivative : (P.domainType → P.codomainType) → (P.domainType → LinearMap ℝ P.domainType P.codomainType)
  linearity : Prop
  chainRule : Prop

def InfiniteDifferentiationClosed {P : InfiniteFunctionSpacePackage} (D : InfiniteDifferentiationPackage P) : Prop :=
  D.linearity ∧ D.chainRule

structure InfiniteDifferentiationEvidence {P : InfiniteFunctionSpacePackage} (D : InfiniteDifferentiationPackage P) where
  linearityClosed : D.linearity
  chainRuleClosed : D.chainRule

theorem infinite_differentiation_closed_from_evidence
    {P : InfiniteFunctionSpacePackage} (D : InfiniteDifferentiationPackage P)
    (E : InfiniteDifferentiationEvidence D) : InfiniteDifferentiationClosed D := by
  exact And.intro E.linearityClosed E.chainRuleClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse