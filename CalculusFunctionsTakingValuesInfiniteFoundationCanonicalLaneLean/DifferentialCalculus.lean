import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFoundationSpaces
import Mathlib.Analysis.Calculus.FDeriv.Basic

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure FrechetDerivativePackage (O : InfiniteAdmittedObject) where
  differentiableAt : O.functionSpace → O.functionSpace → Prop
  derivativeAt : O.functionSpace → (O.functionSpace →L[ℝ] O.functionSpace)
  chainRule : Prop
  linearity : Prop
  chainRuleClosed : chainRule
  linearityClosed : linearity

structure FrechetDerivativeEvidence {O : InfiniteAdmittedObject} (P : FrechetDerivativePackage O) where
  chainRuleClosed : P.chainRule
  linearityClosed : P.linearity

def FrechetDerivativeClosed {O : InfiniteAdmittedObject} (P : FrechetDerivativePackage O) : Prop :=
  P.chainRule ∧ P.linearity

theorem frechet_derivative_closed_from_evidence {O : InfiniteAdmittedObject}
    (P : FrechetDerivativePackage O) (E : FrechetDerivativeEvidence P) :
    FrechetDerivativeClosed P := by
  exact And.intro E.chainRuleClosed E.linearityClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
