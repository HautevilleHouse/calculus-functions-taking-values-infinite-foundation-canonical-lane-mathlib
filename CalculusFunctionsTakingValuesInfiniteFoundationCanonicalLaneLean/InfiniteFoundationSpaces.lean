import HautevilleHouse.CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean

structure InfiniteAdmittedObject where
  space : Type u
  normedSpace : NormedAddCommGroup space
  completeSpace : CompleteSpace space
  normedSpaceOverReal : NormedSpace ℝ space
  functionSpace : Type v
  functionSpaceNormed : NormedAddCommGroup functionSpace
  functionSpaceComplete : CompleteSpace functionSpace
  functionSpaceNormedOverReal : NormedSpace ℝ functionSpace
  continuousEmbedding : functionSpace → space
  conclusion : True

def InfiniteWitnessClosed (O : InfiniteAdmittedObject) : Prop :=
  True

end CalculusFunctionsTakingValuesInfiniteFoundationCanonicalLaneLean
end HautevilleHouse
