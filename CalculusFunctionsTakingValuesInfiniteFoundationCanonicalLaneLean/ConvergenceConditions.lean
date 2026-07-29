import canonicalLaneMathlib.AdmissibleClass
import CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ConvergenceConditionPackage (O : CalculusFunctionAdmittedObject) where
  boundednessCondition : Prop
  monotoneConvergence : Prop
  filterConvergence : Prop
  uniformConvergence : Prop

structure ConvergenceConditionEvidence (O : CalculusFunctionAdmittedObject) (C : ConvergenceConditionPackage O) where
  boundednessConditionClosed : C.boundednessCondition
  monotoneConvergenceClosed : C.monotoneConvergence
  filterConvergenceClosed : C.filterConvergence
  uniformConvergenceClosed : C.uniformConvergence

def ConvergenceConditionClosed (O : CalculusFunctionAdmittedObject) (C : ConvergenceConditionPackage O) : Prop :=
  C.boundednessCondition ∧ C.monotoneConvergence ∧ C.filterConvergence ∧ C.uniformConvergence

theorem convergence_condition_closed_from_evidence (O : CalculusFunctionAdmittedObject) (C : ConvergenceConditionPackage O) (E : ConvergenceConditionEvidence O C) :
    ConvergenceConditionClosed O C := by
  exact And.intro E.boundednessConditionClosed
    (And.intro E.monotoneConvergenceClosed
      (And.intro E.filterConvergenceClosed E.uniformConvergenceClosed))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse