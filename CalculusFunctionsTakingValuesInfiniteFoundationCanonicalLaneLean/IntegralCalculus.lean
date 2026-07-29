import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFoundationSpaces
import Mathlib.Analysis.BochnerIntegral

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure BochnerIntegralPackage (O : InfiniteAdmittedObject) where
  integrableFunction : (O.functionSpace → ℝ) → Prop
  integral : (O.functionSpace → ℝ) → ℝ
  linearity : Prop
  dominatedConvergence : Prop
  linearityClosed : linearity
  dominatedConvergenceClosed : dominatedConvergence

structure BochnerIntegralEvidence {O : InfiniteAdmittedObject} (P : BochnerIntegralPackage O) where
  linearityClosed : P.linearity
  dominatedConvergenceClosed : P.dominatedConvergence

def BochnerIntegralClosed {O : InfiniteAdmittedObject} (P : BochnerIntegralPackage O) : Prop :=
  P.linearity ∧ P.dominatedConvergence

theorem bochner_integral_closed_from_evidence {O : InfiniteAdmittedObject}
    (P : BochnerIntegralPackage O) (E : BochnerIntegralEvidence P) :
    BochnerIntegralClosed P := by
  exact And.intro E.linearityClosed E.dominatedConvergenceClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
