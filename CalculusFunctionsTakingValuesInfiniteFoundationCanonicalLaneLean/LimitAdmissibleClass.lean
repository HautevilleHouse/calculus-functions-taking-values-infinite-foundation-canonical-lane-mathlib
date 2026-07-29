import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure LimitAdmissibleObject where
  functionSpace : Type u
  limitBehaviour : Prop
  infiniteValuesAllowed : Prop
  conclusion : Prop

structure LimitAdmissibleClass where
  object : LimitAdmissibleObject
  limitBehaviourClosed : object.limitBehaviour
  infiniteValuesAllowedClosed : object.infiniteValuesAllowed

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse