import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.ExtendedRealDifferentiability

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealIntegrationPackage (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) where
  f : L.domain → E.carrier
  measure : MeasureTheory.Measure L.domain
  integralDefined : Prop
  lebesgueIntegrable : Prop
  integralValue : E.carrier
  integralUniqueness : Prop
  integralLinear : Prop
  fundamentalTheorem : Prop
  ftcPart1 : fundamentalTheorem → (∀ a b : L.domain, a ≤ b →
    ∫ x in Set.Icc a b, (f x) ∂ measure = D.derivativeAtPoint (some point) * (b - a))
  ftcPart2 : fundamentalTheorem → (∀ a b : L.domain, a ≤ b → D.derivativeAtPoint = f)

definition ExtendedRealIntegrationClosed (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) (I : ExtendedRealIntegrationPackage E L C D) : Prop :=
  I.integralUniqueness ∧ I.integralLinear ∧ I.fundamentalTheorem

structure ExtendedRealIntegrationEvidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) (I : ExtendedRealIntegrationPackage E L C D) where
  integralUniquenessClosed : I.integralUniqueness
  integralLinearClosed : I.integralLinear
  fundamentalTheoremClosed : I.fundamentalTheorem

theorem extended_real_integration_closed_from_evidence (E : ExtendedRealPackage) (L : ExtendedRealFunctionLimitPackage E) (C : ExtendedRealContinuityPackage E L) (D : ExtendedRealDifferentiabilityPackage E L C) (I : ExtendedRealIntegrationPackage E L C D) (Ev : ExtendedRealIntegrationEvidence E L C D I) : ExtendedRealIntegrationClosed E L C D I := by
  exact And.intro Ev.integralUniquenessClosed (And.intro Ev.integralLinearClosed Ev.fundamentalTheoremClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
