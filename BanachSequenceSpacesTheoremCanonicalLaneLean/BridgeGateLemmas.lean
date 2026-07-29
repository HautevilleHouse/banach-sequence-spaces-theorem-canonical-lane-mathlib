import HautevilleHouse.BanachSequenceSpacesTheoremCanonicalLaneLean.BanachSequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  banachSequenceSpaceComplete O.space

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.isBanach

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse