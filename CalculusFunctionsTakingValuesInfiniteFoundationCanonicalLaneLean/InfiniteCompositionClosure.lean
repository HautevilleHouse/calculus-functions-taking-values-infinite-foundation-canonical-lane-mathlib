import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.MonotoneConvergenceClosure

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteCompositionClosure {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} {M : MonotoneConvergenceClosure L} where
  compositionPreservesInfinite : Prop
  iteratedLimitClosure : Prop
  infiniteFixedPoint : Prop

structure InfiniteCompositionEvidence {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} {M : MonotoneConvergenceClosure L}
    (I : InfiniteCompositionClosure M) where
  compositionPreservesInfiniteClosed : I.compositionPreservesInfinite
  iteratedLimitClosureClosed : I.iteratedLimitClosure
  infiniteFixedPointClosed : I.infiniteFixedPoint

def InfiniteCompositionClosed {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} {M : MonotoneConvergenceClosure L}
    (I : InfiniteCompositionClosure M) : Prop :=
  I.compositionPreservesInfinite ∧ I.iteratedLimitClosure ∧ I.infiniteFixedPoint

theorem infinite_composition_closed_from_evidence
    {S : InfiniteValueFunctionSpace} {L : LimitClosureProperty S}
    {M : MonotoneConvergenceClosure L} (I : InfiniteCompositionClosure M)
    (E : InfiniteCompositionEvidence I) : InfiniteCompositionClosed I := by
  exact And.intro E.compositionPreservesInfiniteClosed
    (And.intro E.iteratedLimitClosureClosed E.infiniteFixedPointClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse