import BanachSequenceSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure BanachSequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  sequenceSpace : Prop
  schauderBasis : Prop

def BanachSequenceSpaceWitness (B : BanachSequenceSpace) : Prop :=
  B.sequenceSpace ∧ B.schauderBasis

structure BanachAdmittedObject where
  space : BanachSequenceSpace
  basisProperty : Prop
  unconditionalBasis : Prop
  endpoint : Prop
  conclusion : endpoint

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.endpoint

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse