import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure HolomorphicInfiniteFoundationPackage where
  complexStructure : Type u
  targetBanachSpace : Type v
  cauchyRiemannEquations : Prop
  powerSeriesExpansion : Prop
  cauchyIntegralFormula : Prop
  identityTheorem : Prop

structure HolomorphicInfiniteFoundationEvidence
    (P : HolomorphicInfiniteFoundationPackage) where
  cauchyRiemannEquationsClosed : P.cauchyRiemannEquations
  powerSeriesExpansionClosed : P.powerSeriesExpansion
  cauchyIntegralFormulaClosed : P.cauchyIntegralFormula
  identityTheoremClosed : P.identityTheorem

def HolomorphicInfiniteFoundationClosed
    (P : HolomorphicInfiniteFoundationPackage) : Prop :=
  P.cauchyRiemannEquations ∧ P.powerSeriesExpansion ∧ P.cauchyIntegralFormula ∧ P.identityTheorem

theorem holomorphic_infinite_foundation_closed_from_evidence
    (P : HolomorphicInfiniteFoundationPackage)
    (E : HolomorphicInfiniteFoundationEvidence P) :
    HolomorphicInfiniteFoundationClosed P := by
  exact And.intro E.cauchyRiemannEquationsClosed
    (And.intro E.powerSeriesExpansionClosed
      (And.intro E.cauchyIntegralFormulaClosed E.identityTheoremClosed))

def bridgeFromHolomorphic (P : HolomorphicInfiniteFoundationPackage) (A : AdmissibleClass) : Prop :=
  HolomorphicInfiniteFoundationClosed P → bridgeClosed A

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse