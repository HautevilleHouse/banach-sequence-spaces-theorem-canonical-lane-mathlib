import BanachSequenceSpacesTheoremCanonicalLaneLean.SequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure BanachSpacePropertiesPackage (S : SequenceSpacePackage) where
  completeness : Prop
  normEquivalence : Prop
  separability : Prop

def BanachSpacePropertiesClosed (B : BanachSpacePropertiesPackage) : Prop :=
  B.completeness ∧ B.normEquivalence ∧ B.separability

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse