import canonicalLaneMathlib.AdmissibleClass
import BanachSequenceSpacesCanonicalLaneLean.BanachSequenceSpacesBridgeLemmas

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse