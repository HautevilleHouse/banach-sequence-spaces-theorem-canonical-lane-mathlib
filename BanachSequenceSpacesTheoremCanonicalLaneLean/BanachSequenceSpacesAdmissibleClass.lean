import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

structure BanachSequenceAdmittedObject where
  sequenceSpaceType : Type u
  norm : sequenceSpaceType → ℝ
  normAxioms : Prop
  completeness : Prop
  conclusion : completeness

structure AdmissibleClass where
  object : BanachSequenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachSequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse