import BanachSequenceSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure SequenceSpacePackage where
  indexedSet : Type u
  scalarField : Type v
  vectorSpace : VectorSpace scalarField (indexedSet → scalarField)
  normDefined : (indexedSet → scalarField) → ℝ
  isNorm : Prop
  normCompleteness : Prop

def SequenceSpaceClosed (S : SequenceSpacePackage) : Prop :=
  S.isNorm ∧ S.normCompleteness

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse