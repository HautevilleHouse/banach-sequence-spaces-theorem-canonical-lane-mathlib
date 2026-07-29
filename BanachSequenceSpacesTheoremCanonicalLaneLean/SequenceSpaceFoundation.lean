import Mathlib.Analysis.NormedSpace.Banach
import Mathlib.Analysis.SpecificLimits

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure ℓpSpacePackage (p : ℝ≥0∞) where
  carrier : Type u
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  banachSpace : CompleteSpace carrier
  sequenceRepresentation : Prop
  pValueCheck : p = 1 ∨ p = 2 ∨ p = ∞

structure ShiftOperatorPackage (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  leftShift : ℓ.carrier → ℓ.carrier
  rightShift : ℓ.carrier → ℓ.carrier
  leftShiftLinear : IsLinearMap ℝ leftShift
  rightShiftLinear : IsLinearMap ℝ rightShift
  leftShiftNorm : Prop
  rightShiftNorm : Prop
  spectrum : Prop

structure ℓpSpaceEvidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  sequenceRepresentationClosed : ℓ.sequenceRepresentation
  pValueCheckClosed : ℓ.pValueCheck
  banachSpaceClosed : ℓ.banachSpace

def ℓpSpaceClosed (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) : Prop :=
  ℓ.sequenceRepresentation ∧ ℓ.pValueCheck ∧ ℓ.banachSpace

theorem ℓp_space_closed_from_evidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) (e : ℓpSpaceEvidence p ℓ) :
    ℓpSpaceClosed p ℓ := by
  exact And.intro e.sequenceRepresentationClosed (And.intro e.pValueCheckClosed e.banachSpaceClosed)

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse