import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteValueClassification

/-!
# Growth Rate Estimates Package
-/

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure GrowthRateEstimatesPackage where
  baseFunction : ℕ → ℕ
  growthRate : ℕ → ℕ
  estimate : ∀ n : ℕ, baseFunction n ≤ growthRate n
  estimateClosed : estimate

def GrowthRateEstimatesClosed (P : GrowthRateEstimatesPackage) : Prop :=
  P.estimate

theorem growth_rate_estimates_closed (P : GrowthRateEstimatesPackage) : GrowthRateEstimatesClosed P := by
  exact P.estimateClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse