import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure EpsilonDeltaPackage where
  epsilon : Type u
  delta : Type v
  limitPoint : Prop
  continuityDefined : Prop
  uniformContinuityDefined : Prop

structure EpsilonDeltaEvidence (E : EpsilonDeltaPackage) where
  limitPointClosed : E.limitPoint
  continuityDefinedClosed : E.continuityDefined
  uniformContinuityDefinedClosed : E.uniformContinuityDefined

def EpsilonDeltaClosed (E : EpsilonDeltaPackage) : Prop :=
  E.limitPoint ∧ E.continuityDefined ∧ E.uniformContinuityDefined

theorem epsilon_delta_closed_from_evidence (E : EpsilonDeltaPackage)
    (Ev : EpsilonDeltaEvidence E) : EpsilonDeltaClosed E := by
  exact And.intro Ev.limitPointClosed (And.intro Ev.continuityDefinedClosed Ev.uniformContinuityDefinedClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse