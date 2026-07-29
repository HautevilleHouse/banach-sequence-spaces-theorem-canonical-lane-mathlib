import canonicalLaneMathlib.AdmissibleClass
import BanachSequenceSpacesCanonicalLaneLean.BanachSequenceSpacesAdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachSequenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse