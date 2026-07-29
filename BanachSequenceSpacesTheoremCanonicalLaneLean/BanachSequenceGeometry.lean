import BanachSequenceSpacesTheoremCanonicalLaneLean.BanachSequenceSpaceStructure

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure BanachSequenceGeometryPackage where
  sequenceSpace : BanachSequenceSpace
  basisGeometry : Prop
  coordinateFunctionals : Prop
  normComputation : Prop
  basisGeometryClosed : basisGeometry
  coordinateFunctionalsClosed : coordinateFunctionals
  normComputationClosed : normComputation

def BanachSequenceGeometryClosed (P : BanachSequenceGeometryPackage) : Prop :=
  P.basisGeometry ∧ P.coordinateFunctionals ∧ P.normComputation

theorem banach_sequence_geometry_closed (P : BanachSequenceGeometryPackage) :
    BanachSequenceGeometryClosed P := by
  exact And.intro P.basisGeometryClosed (And.intro P.coordinateFunctionalsClosed P.normComputationClosed)

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse