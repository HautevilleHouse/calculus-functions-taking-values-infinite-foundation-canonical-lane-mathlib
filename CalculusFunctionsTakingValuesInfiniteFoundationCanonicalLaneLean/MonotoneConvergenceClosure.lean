import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.LimitClosureProperty

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure MonotoneConvergenceClosure {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} where
  monotoneSequenceLimit : Prop
  supremumInfinite : Prop
  limitPreservesInfinite : Prop

structure MonotoneConvergenceEvidence {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} (M : MonotoneConvergenceClosure L) where
  monotoneSequenceLimitClosed : M.monotoneSequenceLimit
  supremumInfiniteClosed : M.supremumInfinite
  limitPreservesInfiniteClosed : M.limitPreservesInfinite

def MonotoneConvergenceClosed {S : InfiniteValueFunctionSpace}
    {L : LimitClosureProperty S} (M : MonotoneConvergenceClosure L) : Prop :=
  M.monotoneSequenceLimit ∧ M.supremumInfinite ∧ M.limitPreservesInfinite

theorem monotone_convergence_closed_from_evidence
    {S : InfiniteValueFunctionSpace} {L : LimitClosureProperty S}
    (M : MonotoneConvergenceClosure L) (E : MonotoneConvergenceEvidence M) :
    MonotoneConvergenceClosed M := by
  exact And.intro E.monotoneSequenceLimitClosed
    (And.intro E.supremumInfiniteClosed E.limitPreservesInfiniteClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse