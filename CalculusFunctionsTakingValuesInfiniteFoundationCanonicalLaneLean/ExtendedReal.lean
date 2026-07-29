import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure ExtendedRealPackage where
  carrier : Type
  le : carrier → carrier → Prop
  top : carrier
  bot : carrier
  orderTop : OrderTop carrier le
  orderBot : OrderBot carrier le
  denseLE : DenselyOrdered carrier le
  conditionallyCompleteLinearOrder : ConditionallyCompleteLinearOrder carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  addCommMonoid : AddCommMonoid carrier add
  addCommutative : ∀ a b : carrier, add a b = add b a
  addAssociative : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addMonoid : AddMonoid carrier add
  addCommSemigroup : AddCommSemigroup carrier add
  addMonoidWithZero : AddMonoidWithZero carrier add
  addCommMonoidWithOne : AddCommMonoidWithOne carrier add
  addGroupWithOne : AddGroupWithOne carrier add
  mulMonoid : Monoid carrier mul
  mulCommutative : ∀ a b : carrier, mul a b = mul b a
  mulAssociative : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mulZeroClass : MulZeroClass carrier mul
  mulZeroOneClass : MulZeroOneClass carrier mul
  distrib : Distrib carrier add mul
  mulAddAction : MulAction (Additive carrier) carrier
  smul : ℕ → carrier → carrier
  nsmulZero : ∀ a : carrier, smul 0 a = 0
  nsmulSucc : ∀ (n : ℕ) (a : carrier), smul (Nat.succ n) a = add a (smul n a)
  toAddMonoidWithOne : AddMonoidWithOne carrier
  toAddGroupWithOne : AddGroupWithOne carrier
  toOrderedAddCommMonoid : OrderedAddCommMonoid carrier add le
  toOrderedSemiring : OrderedSemiring carrier add mul le
  toCanonicallyOrderedAddCommMonoid : CanonicallyOrderedAddCommMonoid carrier add le
  toConditionallyCompleteLinearOrderedAddCommMonoid : ConditionallyCompleteLinearOrderedAddCommMonoid carrier add le
  toLinearOrderedAddCommMonoid : LinearOrderedAddCommMonoid carrier add le

definition ExtendedRealClosed (E : ExtendedRealPackage) : Prop :=
  E.orderTop ∧ E.orderBot ∧ E.denseLE ∧ E.conditionallyCompleteLinearOrder ∧
  E.addCommMonoid ∧ E.mulMonoid ∧ E.distrib ∧
  E.toOrderedSemiring ∧ E.toLinearOrderedAddCommMonoid

structure ExtendedRealEvidence (E : ExtendedRealPackage) where
  orderTopClosed : E.orderTop
  orderBotClosed : E.orderBot
  denseLEClosed : E.denseLE
  conditionallyCompleteLinearOrderClosed : E.conditionallyCompleteLinearOrder
  addCommMonoidClosed : E.addCommMonoid
  mulMonoidClosed : E.mulMonoid
  distribClosed : E.distrib
  toOrderedSemiringClosed : E.toOrderedSemiring
  toLinearOrderedAddCommMonoidClosed : E.toLinearOrderedAddCommMonoid

theorem extended_real_closed_from_evidence (E : ExtendedRealPackage) (Ev : ExtendedRealEvidence E) : ExtendedRealClosed E := by
  exact And.intro Ev.orderTopClosed
    (And.intro Ev.orderBotClosed
      (And.intro Ev.denseLEClosed
        (And.intro Ev.conditionallyCompleteLinearOrderClosed
          (And.intro Ev.addCommMonoidClosed
            (And.intro Ev.mulMonoidClosed
              (And.intro Ev.distribClosed
                (And.intro Ev.toOrderedSemiringClosed Ev.toLinearOrderedAddCommMonoidClosed)))))))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
