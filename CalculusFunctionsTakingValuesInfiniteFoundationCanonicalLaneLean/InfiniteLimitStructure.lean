import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFunctionSpace

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteLimitPackage (P : InfiniteFunctionSpacePackage) where
  nets : Type w
  filter : nets → Filter P.codomainType
  convergence : Prop
  uniqueness : Prop

def InfiniteLimitClosed {P : InfiniteFunctionSpacePackage} (L : InfiniteLimitPackage P) : Prop :=
  L.convergence ∧ L.uniqueness

structure InfiniteLimitEvidence {P : InfiniteFunctionSpacePackage} (L : InfiniteLimitPackage P) where
  convergenceClosed : L.convergence
  uniquenessClosed : L.uniqueness

theorem infinite_limit_closed_from_evidence
    {P : InfiniteFunctionSpacePackage} (L : InfiniteLimitPackage P)
    (E : InfiniteLimitEvidence L) : InfiniteLimitClosed L := by
  exact And.intro E.convergenceClosed E.uniquenessClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse