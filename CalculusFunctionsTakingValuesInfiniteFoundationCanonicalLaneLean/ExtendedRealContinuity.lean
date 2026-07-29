import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ExtendedRealFunctionLimits

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealContinuityPackage (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) where
  f : L.domain → E.carrier
  continuityAtPoint : L.limitPoint → Prop
  continuityDefinition : ∀ x : L.domain, Filter.Tendsto f (nhds x) (nhds (f x))
  continuousOn : Set L.domain → Prop
  uniformContinuity : Prop
  heineCantorTheorem : uniformContinuity → continuousOn (Set.univ : Set L.domain)

definition ExtendedRealContinuityClosed (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) : Prop :=
  C.continuityDefinition ∧ C.continuousOn (Set.univ : Set L.domain)

structure ExtendedRealContinuityEvidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) where
  continuityDefinitionClosed : C.continuityDefinition
  continuousOnUnivClosed : C.continuousOn (Set.univ : Set L.domain)

theorem extended_real_continuity_closed_from_evidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (Ev : ExtendedRealContinuityEvidence E L C) : ExtendedRealContinuityClosed E L C := by
  exact And.intro Ev.continuityDefinitionClosed Ev.continuousOnUnivClosed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
