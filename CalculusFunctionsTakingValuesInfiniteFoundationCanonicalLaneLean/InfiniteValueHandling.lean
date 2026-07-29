import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteValuePackage where
  extendedRealsDefined : Prop
  arithmeticDefined : Prop
  topologyDefined : Prop
  measureTheoryDefined : Prop

structure InfiniteValueEvidence (I : InfiniteValuePackage) where
  extendedRealsDefinedClosed : I.extendedRealsDefined
  arithmeticDefinedClosed : I.arithmeticDefined
  topologyDefinedClosed : I.topologyDefined
  measureTheoryDefinedClosed : I.measureTheoryDefined

def InfiniteValueClosed (I : InfiniteValuePackage) : Prop :=
  I.extendedRealsDefined ∧ I.arithmeticDefined ∧ I.topologyDefined ∧ I.measureTheoryDefined

theorem infinite_value_closed_from_evidence (I : InfiniteValuePackage)
    (Ev : InfiniteValueEvidence I) : InfiniteValueClosed I := by
  exact And.intro Ev.extendedRealsDefinedClosed
    (And.intro Ev.arithmeticDefinedClosed
      (And.intro Ev.topologyDefinedClosed Ev.measureTheoryDefinedClosed))

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse