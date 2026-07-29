import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.BanachSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

structure BanachSequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

def BanachSequenceWitnessClosed (O : BanachSequenceAdmittedObject) : Prop :=
  O.conclusion

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse