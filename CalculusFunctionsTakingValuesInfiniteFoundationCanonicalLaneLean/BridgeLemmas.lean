import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

def bridgeClosed (A : ExtendedRealAdmissibleObject) : Prop :=
  ExtendedRealClosed A.package ∧ ExtendedRealFunctionLimitClosed A.package A.limitPackage ∧
  ExtendedRealContinuityClosed A.package A.limitPackage A.continuityPackage ∧
  ExtendedRealDifferentiabilityClosed A.package A.limitPackage A.continuityPackage A.differentiabilityPackage ∧
  ExtendedRealIntegrationClosed A.package A.limitPackage A.continuityPackage A.differentiabilityPackage A.integrationPackage

theorem bridge_from_admissible_class (A : ExtendedRealAdmissibleObject) :
    bridgeClosed A := by
  exact extended_real_admitted_closure_holds A

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
