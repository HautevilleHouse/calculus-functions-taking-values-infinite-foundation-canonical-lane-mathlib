import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ExtendedRealContinuity

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealDifferentiabilityPackage (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) where
  f : L.domain → E.carrier
  derivativeAtPoint : L.domain → E.carrier
  derivativeDefinition : Prop
  differentiableAt : L.domain → Prop
  derivativeUnique : Prop
  derivativeLinear : Prop
  chainRule : Prop
  differentiableAtPointDefinition : ∀ x : L.domain, differentiableAt x →
    (Filter.Tendsto (fun (h : E.carrier) => (f (L.limitPoint + h) - f L.limitPoint) / h) (nhds 0) (nhds (derivativeAtPoint L.limitPoint)))

definition ExtendedRealDifferentiabilityClosed (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) : Prop :=
  D.derivativeUnique ∧ D.derivativeLinear ∧ D.chainRule

structure ExtendedRealDifferentiabilityEvidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) where
  derivativeUniqueClosed : D.derivativeUnique
  derivativeLinearClosed : D.derivativeLinear
  chainRuleClosed : D.chainRule

theorem extended_real_differentiability_closed_from_evidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) (Ev : ExtendedRealDifferentiabilityEvidence E L C D) : ExtendedRealDifferentiabilityClosed E L C D := by
  exact And.intro Ev.derivativeUniqueClosed (And.intro Ev.derivativeLinearClosed Ev.chainRuleClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
