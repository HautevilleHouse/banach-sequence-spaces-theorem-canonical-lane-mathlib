import BanachSequenceSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def banachProjection : Projection BanachEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem banach_projection_idempotent (x : BanachEndgameState) :
    banachProjection.toFun (banachProjection.toFun x) = banachProjection.toFun x := by
  exact banachProjection.idempotent x

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse