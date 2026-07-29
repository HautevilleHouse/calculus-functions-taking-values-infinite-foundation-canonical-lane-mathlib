import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ExtendedReal

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealFunctionLimitPackage (E : ExtendedRealPackage) where
  domain : Type
  topology : TopologicalSpace domain
  f : domain → E.carrier
  limitPoint : domain
  limitValue : E.carrier
  filterBasis : FilterBasis domain
  limitDefinition : Filter.Tendsto f (nhds limitPoint) (nhds limitValue)
  uniqueLimit : Prop
  limitUnique : uniqueLimit
  oneSidedLimits : Prop
  leftLimitDefined : oneSidedLimits → Filter.Tendsto f (nhdsWithin limitPoint (Set.Iio limitPoint)) (nhds limitValue)
  rightLimitDefined : oneSidedLimits → Filter.Tendsto f (nhdsWithin limitPoint (Set.Ioi limitPoint)) (nhds limitValue)

definition ExtendedRealFunctionLimitClosed (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) : Prop :=
  L.limitUnique ∧ L.oneSidedLimits

structure ExtendedRealFunctionLimitEvidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) where
  limitUniqueClosed : L.limitUnique
  oneSidedLimitsClosed : L.oneSidedLimits

theorem extended_real_function_limit_closed_from_evidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (Ev : ExtendedRealFunctionLimitEvidence E L) : ExtendedRealFunctionLimitClosed E L := by
  exact And.intro Ev.limitUniqueClosed Ev.oneSidedLimitsClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
