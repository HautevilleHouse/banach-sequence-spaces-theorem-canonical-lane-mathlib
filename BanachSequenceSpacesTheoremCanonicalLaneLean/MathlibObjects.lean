import BanachSequenceSpacesTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BanachSpaceObject where
  carrier : Type u
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  banachSpace : CompleteSpace carrier
  sequenceSpace : Prop
  pValue : ℝ≥0∞
  canonicalBasis : Prop
  
structure BanachAdmittedObject where
  space : BanachSpaceObject
  theoremStatement : Prop
  conclusion : theoremStatement

structure BanachEndgameState where
  object : BanachAdmittedObject

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.theoremStatement

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse