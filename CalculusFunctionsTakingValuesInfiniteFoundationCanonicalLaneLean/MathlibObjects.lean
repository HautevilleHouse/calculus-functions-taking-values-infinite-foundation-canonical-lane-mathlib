import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CalculusFunctionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalculusFunctionAdmittedObject where
  space : CalculusFunctionSpace
  functionDefined : Prop
  takesFiniteValues : Prop
  infiniteLimitModel : Type
  infiniteLimitTopology : TopologicalSpace infiniteLimitModel
  limitConverges : Prop
  conclusion : limitConverges

structure EndgameState where
  object : CalculusFunctionAdmittedObject

def CalculusFunctionWitnessClosed (O : CalculusFunctionAdmittedObject) : Prop :=
  O.limitConverges

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse