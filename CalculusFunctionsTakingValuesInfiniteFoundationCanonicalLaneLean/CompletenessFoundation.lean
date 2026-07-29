import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure CompletenessFoundation (F : FunctionSpacePackage) where
  cauchyComplete : Prop
  banachSpace : Prop
  hilbertSpace : Prop

def CompletenessFoundationClosed {F : FunctionSpacePackage} (C : CompletenessFoundation F) : Prop :=
  C.cauchyComplete ∧ C.banachSpace ∧ C.hilbertSpace

structure CompletenessFoundationEvidence {F : FunctionSpacePackage} (C : CompletenessFoundation F) where
  cauchyCompleteClosed : C.cauchyComplete
  banachSpaceClosed : C.banachSpace
  hilbertSpaceClosed : C.hilbertSpace

theorem completeness_foundation_closed_from_evidence {F : FunctionSpacePackage}
    (C : CompletenessFoundation F) (E : CompletenessFoundationEvidence C) :
    CompletenessFoundationClosed C := by
  exact And.intro E.cauchyCompleteClosed
    (And.intro E.banachSpaceClosed E.hilbertSpaceClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse