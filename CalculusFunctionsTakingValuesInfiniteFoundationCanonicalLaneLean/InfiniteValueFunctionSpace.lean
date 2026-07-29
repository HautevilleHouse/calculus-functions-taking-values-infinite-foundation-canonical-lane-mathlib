import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteValueFunctionSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  infiniteValue : carrier → Prop
  limitingPoint : carrier
  infiniteValueAtLimit : infiniteValue limitingPoint

structure InfiniteValueFunctionEvidence (S : InfiniteValueFunctionSpace) where
  infiniteValueAtLimitClosed : S.infiniteValueAtLimit
  functionWellDefined : Prop
  functionWellDefinedClosed : functionWellDefined

def InfiniteValueFunctionSpaceClosed (S : InfiniteValueFunctionSpace) : Prop :=
  S.infiniteValueAtLimit

theorem infinite_value_function_space_closed_from_evidence
    (S : InfiniteValueFunctionSpace) (E : InfiniteValueFunctionEvidence S) :
    InfiniteValueFunctionSpaceClosed S := by
  exact E.infiniteValueAtLimitClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse