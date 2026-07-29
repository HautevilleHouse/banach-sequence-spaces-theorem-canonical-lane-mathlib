import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSequenceSpacesTheoremCanonicalLaneLean.BanachSequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachSequenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    -- A.object.conclusion supplies the witness
    exact A.object.conclusion

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse