import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure FunctionSpacePackage where
  domain : Type u
  codomain : Type v
  functionSet : Set (domain → codomain)
  vectorSpaceStructure : Module ℝ (Subtype fun f : domain → codomain => f ∈ functionSet)
  complete : Prop

def FunctionSpaceClosed (F : FunctionSpacePackage) : Prop :=
  F.complete

structure FunctionSpaceEvidence (F : FunctionSpacePackage) where
  completeClosed : F.complete

theorem function_space_closed_from_evidence (F : FunctionSpacePackage) (E : FunctionSpaceEvidence F) :
    FunctionSpaceClosed F := by
  exact E.completeClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse