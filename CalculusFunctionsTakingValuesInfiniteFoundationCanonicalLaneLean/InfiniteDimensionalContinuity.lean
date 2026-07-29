import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteDimensionalContinuityPackage (F : FunctionSpacePackage) where
  continuousFunctions : Set F.functionSet
  closureUnderLimits : Prop
  closedGraphTheorem : Prop

def InfiniteDimensionalContinuityClosed {F : FunctionSpacePackage} (C : InfiniteDimensionalContinuityPackage F) : Prop :=
  C.closureUnderLimits ∧ C.closedGraphTheorem

structure InfiniteDimensionalContinuityEvidence {F : FunctionSpacePackage} (C : InfiniteDimensionalContinuityPackage F) where
  closureUnderLimitsClosed : C.closureUnderLimits
  closedGraphTheoremClosed : C.closedGraphTheorem

theorem infinite_dimensional_continuity_closed_from_evidence {F : FunctionSpacePackage}
    (C : InfiniteDimensionalContinuityPackage F) (E : InfiniteDimensionalContinuityEvidence C) :
    InfiniteDimensionalContinuityClosed C := by
  exact And.intro E.closureUnderLimitsClosed E.closedGraphTheoremClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse