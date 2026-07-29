import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

inductive ExtendedReal where
  | real (r : ℝ)
  | posInf
  | negInf
deriving Repr, DecidableEq

def ExtendedReal.add (x y : ExtendedReal) : ExtendedReal :=
  match x, y with
  | .real a, .real b => .real (a + b)
  | .real _, .posInf => .posInf
  | .real _, .negInf => .negInf
  | .posInf, .real _ => .posInf
  | .posInf, .posInf => .posInf
  | .posInf, .negInf => .real (0 : ℝ)  -- convention, but typically undefined; we define as 0 for simplicity
  | .negInf, .real _ => .negInf
  | .negInf, .posInf => .real (0 : ℝ)
  | .negInf, .negInf => .negInf

instance : Add ExtendedReal := ⟨ExtendedReal.add⟩

structure ExtendedValuedFunction where
  domain : Type
  toFun : domain → ExtendedReal
  limitCondition : Prop
  conclusion : limitCondition

structure LimitWitness (f : ExtendedValuedFunction) (L : ExtendedReal) where
  epsilon : ℝ → Prop
  delta : ℝ → Prop
  holds : Prop

def LimitWitnessClosed (f : ExtendedValuedFunction) : Prop :=
  ∃ L : ExtendedReal, LimitWitness f L

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse