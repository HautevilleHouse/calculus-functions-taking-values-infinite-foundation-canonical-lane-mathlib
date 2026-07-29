import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteFunctionSpacePackage where
  domainType : Type u
  codomainType : Type v
  topology : TopologicalSpace codomainType
  vectorSpace : AddCommGroup codomainType
  norm : codomainType → ℝ
  normedSpace : NormedAddCommGroup codomainType
  functionSpace : Set (domainType → codomainType)
  linearStructure : Submodule ℝ (domainType → codomainType) functionSpace

def InfiniteFunctionSpaceClosed (P : InfiniteFunctionSpacePackage) : Prop :=
  P.normedSpace ≠ default ∧ P.functionSpace.Nonempty

structure InfiniteFunctionSpaceEvidence (P : InfiniteFunctionSpacePackage) where
  normedSpaceClosed : P.normedSpace ≠ default
  functionSpaceNonemptyClosed : P.functionSpace.Nonempty

theorem infinite_function_space_closed_from_evidence
    (P : InfiniteFunctionSpacePackage) (E : InfiniteFunctionSpaceEvidence P) :
    InfiniteFunctionSpaceClosed P := by
  exact And.intro E.normedSpaceClosed E.functionSpaceNonemptyClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse