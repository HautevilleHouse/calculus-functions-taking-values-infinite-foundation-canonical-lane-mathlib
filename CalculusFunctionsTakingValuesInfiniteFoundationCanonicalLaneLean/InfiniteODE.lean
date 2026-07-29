import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.InfiniteFunctionSpace

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteODEPackage (P : InfiniteFunctionSpacePackage) where
  vectorField : P.codomainType → P.codomainType
  existence : (x₀ : P.codomainType) → ∃ (t : ℝ) (φ : ℝ → P.codomainType), φ 0 = x₀ ∧ ∀ s, deriv φ s = vectorField (φ s)
  uniqueness : ∀ (x₀ : P.codomainType) (φ ψ : ℝ → P.codomainType),
      φ 0 = x₀ → ψ 0 = x₀ → (∀ s, deriv φ s = vectorField (φ s)) → (∀ s, deriv ψ s = vectorField (ψ s)) → φ = ψ

def InfiniteODEClosed {P : InfiniteFunctionSpacePackage} (O : InfiniteODEPackage P) : Prop :=
  O.existence ∧ O.uniqueness

structure InfiniteODEEvidence {P : InfiniteFunctionSpacePackage} (O : InfiniteODEPackage P) where
  existenceClosed : O.existence
  uniquenessClosed : O.uniqueness

theorem infinite_ode_closed_from_evidence
    {P : InfiniteFunctionSpacePackage} (O : InfiniteODEPackage P) (E : InfiniteODEEvidence O) :
    InfiniteODEClosed O := by
  exact And.intro E.existenceClosed E.uniquenessClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse