import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure MeasureIntegrationPackage (I : InfiniteFunctionPackage) where
  integralDefined : Prop
  absoluteContinuity : Prop
  infiniteValueIntegration : I.valuesTakeInfinite → Prop

structure MeasureIntegrationEvidence {I : InfiniteFunctionPackage}
    (M : MeasureIntegrationPackage I) where
  integralDefinedClosed : M.integralDefined
  absoluteContinuityClosed : M.absoluteContinuity
  infiniteValueIntegrationClosed : M.infiniteValueIntegration (by
    -- placeholder: assume we have evidence that values take infinite
    sorry)

def MeasureIntegrationClosed {I : InfiniteFunctionPackage}
    (M : MeasureIntegrationPackage I) : Prop :=
  M.integralDefined ∧ M.absoluteContinuity ∧ M.infiniteValueIntegration (by
    sorry)

theorem measure_integration_closed_from_evidence {I : InfiniteFunctionPackage}
    (M : MeasureIntegrationPackage I) (E : MeasureIntegrationEvidence M) :
    MeasureIntegrationClosed M := by
  exact And.intro E.integralDefinedClosed
    (And.intro E.absoluteContinuityClosed E.infiniteValueIntegrationClosed)

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse