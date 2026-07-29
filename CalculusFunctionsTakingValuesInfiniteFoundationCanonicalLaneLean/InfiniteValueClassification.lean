import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.GateLemmas

/-!
# Infinite Value Classification Package
-/

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteValueClassificationPackage where
  domain : Type
  codomain : Type
  functionType : domain → codomain
  infiniteValueSet : Set codomain
  preimageOfInfinite : Set domain
  classification : ∀ x : domain, functionType x ∈ infiniteValueSet → classificationResult x
  classificationResult : domain → Prop
  classificationClosed : classificationResult = λ x => functionType x ∈ preimageOfInfinite

def InfiniteValueClassificationClosed (P : InfiniteValueClassificationPackage) : Prop :=
  ∀ x : P.domain, P.functionType x ∈ P.infiniteValueSet → P.classificationResult x

theorem infinite_value_classification_closed (P : InfiniteValueClassificationPackage) :
    InfiniteValueClassificationClosed P := by
  intro x h
  rw [P.classificationClosed]
  exact h

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse