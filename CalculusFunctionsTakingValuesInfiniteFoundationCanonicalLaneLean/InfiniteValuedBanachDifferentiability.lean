import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteValuedBanachDifferentiabilityPackage where
  sourceManifold : Type u
  targetBanachSpace : Type v
  differentiableAtlas : Prop
  derivativeLaws : Prop
  chainRule : Prop
  inverseFunctionTheorem : Prop

structure InfiniteValuedBanachDifferentiabilityEvidence
    (P : InfiniteValuedBanachDifferentiabilityPackage) where
  differentiableAtlasClosed : P.differentiableAtlas
  derivativeLawsClosed : P.derivativeLaws
  chainRuleClosed : P.chainRule
  inverseFunctionTheoremClosed : P.inverseFunctionTheorem

def InfiniteValuedBanachDifferentiabilityClosed
    (P : InfiniteValuedBanachDifferentiabilityPackage) : Prop :=
  P.differentiableAtlas ∧ P.derivativeLaws ∧ P.chainRule ∧ P.inverseFunctionTheorem

theorem infinite_valued_banach_differentiability_closed_from_evidence
    (P : InfiniteValuedBanachDifferentiabilityPackage)
    (E : InfiniteValuedBanachDifferentiabilityEvidence P) :
    InfiniteValuedBanachDifferentiabilityClosed P := by
  exact And.intro E.differentiableAtlasClosed
    (And.intro E.derivativeLawsClosed
      (And.intro E.chainRuleClosed E.inverseFunctionTheoremClosed))

def bridgeFromDifferentiability (P : InfiniteValuedBanachDifferentiabilityPackage) (A : AdmissibleClass) : Prop :=
  InfiniteValuedBanachDifferentiabilityClosed P → bridgeClosed A

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse