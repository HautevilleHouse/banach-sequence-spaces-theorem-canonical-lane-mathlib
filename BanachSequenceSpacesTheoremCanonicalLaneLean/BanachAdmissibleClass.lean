import BanachSequenceSpacesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse