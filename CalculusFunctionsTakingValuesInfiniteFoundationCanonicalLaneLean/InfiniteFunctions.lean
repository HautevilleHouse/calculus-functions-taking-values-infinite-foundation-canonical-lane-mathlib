import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteFunctionPackage where
  underlyingSet : Type u
  measure : underlyingSet → ℝ
  valuesTakeInfinite : Prop
  convergenceCondition : Prop
  boundednessOnFinite : Prop

structure InfiniteFunctionEvidence (I : InfiniteFunctionPackage) where
  valuesTakeInfiniteClosed : I.valuesTakeInfinite
  convergenceConditionClosed : I.convergenceCondition
  boundednessOnFiniteClosed : I.boundednessOnFinite

def InfiniteFunctionClosed (I : InfiniteFunctionPackage) : Prop :=
  I.valuesTakeInfinite ∧ I.convergenceCondition ∧ I.boundednessOnFinite

theorem infinite_function_closed_from_evidence (I : InfiniteFunctionPackage)
    (E : InfiniteFunctionEvidence I) : InfiniteFunctionClosed I := by
  exact And.intro E.valuesTakeInfiniteClosed
    (And.intro E.convergenceConditionClosed E.boundednessOnFiniteClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse