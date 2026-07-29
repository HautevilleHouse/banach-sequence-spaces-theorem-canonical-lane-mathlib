import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure BanachSequenceSpaceObject where
  carrier : Type
  norm : carrier → ℝ
  normedGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  isComplete : Prop
  isBanach : Prop := isComplete

def banachSequenceSpaceWitnessClosed (O : BanachSequenceSpaceObject) : Prop :=
  O.isBanach

structure AdmissibleClass where
  object : BanachSequenceSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  banachSequenceSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse