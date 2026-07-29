import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteValueFunctionSpace

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure LimitClosureProperty {S : InfiniteValueFunctionSpace} where
  limitPointUnchanged : Prop
  scalingInvariant : Prop
  closureUnderLimits : Prop

structure LimitClosureEvidence {S : InfiniteValueFunctionSpace}
    (L : LimitClosureProperty S) where
  limitPointUnchangedClosed : L.limitPointUnchanged
  scalingInvariantClosed : L.scalingInvariant
  closureUnderLimitsClosed : L.closureUnderLimits

def LimitClosureClosed {S : InfiniteValueFunctionSpace}
    (L : LimitClosureProperty S) : Prop :=
  L.limitPointUnchanged ∧ L.scalingInvariant ∧ L.closureUnderLimits

theorem limit_closure_closed_from_evidence
    {S : InfiniteValueFunctionSpace} (L : LimitClosureProperty S)
    (E : LimitClosureEvidence L) : LimitClosureClosed L := by
  exact And.intro E.limitPointUnchangedClosed
    (And.intro E.scalingInvariantClosed E.closureUnderLimitsClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse