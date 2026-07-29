import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.GrowthRateEstimates

/-!
# Asymptotic Comparison Package
-/

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure AsymptoticComparisonPackage where
  f : ℕ → ℕ
  g : ℕ → ℕ
  asymptoticDominance : ∃ C : ℕ, ∀ n : ℕ, f n ≤ C * g n
  asymptoticDominanceClosed : asymptoticDominance

def AsymptoticComparisonClosed (P : AsymptoticComparisonPackage) : Prop :=
  P.asymptoticDominance

theorem asymptotic_comparison_closed (P : AsymptoticComparisonPackage) : AsymptoticComparisonClosed P := by
  exact P.asymptoticDominanceClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse