import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ConvergencePackage (F : FunctionSpacePackage) where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  compactConvergence : Prop
  weakConvergence : Prop

def ConvergenceClosed {F : FunctionSpacePackage} (C : ConvergencePackage F) : Prop :=
  C.pointwiseConvergence ∧ C.uniformConvergence ∧ C.compactConvergence ∧ C.weakConvergence

structure ConvergenceEvidence {F : FunctionSpacePackage} (C : ConvergencePackage F) where
  pointwiseConvergenceClosed : C.pointwiseConvergence
  uniformConvergenceClosed : C.uniformConvergence
  compactConvergenceClosed : C.compactConvergence
  weakConvergenceClosed : C.weakConvergence

theorem convergence_closed_from_evidence {F : FunctionSpacePackage}
    (C : ConvergencePackage F) (E : ConvergenceEvidence C) :
    ConvergenceClosed C := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.uniformConvergenceClosed
      (And.intro E.compactConvergenceClosed E.weakConvergenceClosed))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse