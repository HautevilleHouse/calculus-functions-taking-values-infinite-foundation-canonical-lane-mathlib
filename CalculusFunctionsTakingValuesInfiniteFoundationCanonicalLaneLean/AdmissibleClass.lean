import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealAdmissibleObject where
  package : ExtendedRealPackage
  limitPackage : ExtendedRealFunctionLimitPackage package
  continuityPackage : ExtendedRealContinuityPackage package limitPackage
  differentiabilityPackage : ExtendedRealDifferentiabilityPackage package limitPackage continuityPackage
  integrationPackage : ExtendedRealIntegrationPackage package limitPackage continuityPackage differentiabilityPackage
  evidence : ExtendedRealEvidence package
  limitEvidence : ExtendedRealFunctionLimitEvidence package limitPackage
  continuityEvidence : ExtendedRealContinuityEvidence package limitPackage continuityPackage
  differentiabilityEvidence : ExtendedRealDifferentiabilityEvidence package limitPackage continuityPackage differentiabilityPackage
  integrationEvidence : ExtendedRealIntegrationEvidence package limitPackage continuityPackage differentiabilityPackage integrationPackage

definition extendedRealAdmittedClosure (A : ExtendedRealAdmissibleObject) : Prop :=
  ExtendedRealClosed A.package ∧ ExtendedRealFunctionLimitClosed A.package A.limitPackage ∧
  ExtendedRealContinuityClosed A.package A.limitPackage A.continuityPackage ∧
  ExtendedRealDifferentiabilityClosed A.package A.limitPackage A.continuityPackage A.differentiabilityPackage ∧
  ExtendedRealIntegrationClosed A.package A.limitPackage A.continuityPackage A.differentiabilityPackage A.integrationPackage

theorem extended_real_admitted_closure_holds (A : ExtendedRealAdmissibleObject) :
    extendedRealAdmittedClosure A := by
  refine And.intro (extended_real_closed_from_evidence A.package A.evidence)
    (And.intro (extended_real_function_limit_closed_from_evidence A.package A.limitPackage A.limitEvidence)
      (And.intro (extended_real_continuity_closed_from_evidence A.package A.limitPackage A.continuityPackage A.continuityEvidence)
        (And.intro (extended_real_differentiability_closed_from_evidence A.package A.limitPackage A.continuityPackage A.differentiabilityPackage A.differentiabilityEvidence)
          (extended_real_integration_closed_from_evidence A.package A.limitPackage A.continuityPackage A.differentiabilityPackage A.integrationPackage A.integrationEvidence))))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
