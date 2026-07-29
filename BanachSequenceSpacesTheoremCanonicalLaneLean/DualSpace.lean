import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSequenceSpacesTheoremCanonicalLaneLean.BanachSequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure DualSpace (B : BanachSequenceSpaceStructure) where
  dual_carrier : Type
  dual_norm : dual_carrier → ℝ
  pairing : dual_carrier → B.carrier → ℝ
  dual_norm_property : ∀ f : dual_carrier, dual_norm f = sup { |pairing f x| | x : B.carrier, B.norm x ≤ 1 }

def DualSpaceClosed (B : BanachSequenceSpaceStructure) (D : DualSpace B) : Prop :=
  ∀ f : D.dual_carrier, D.dual_norm f = sup { |D.pairing f x| | x : B.carrier, B.norm x ≤ 1 }

theorem dual_space_closed_self (B : BanachSequenceSpaceStructure) (D : DualSpace B) : DualSpaceClosed B D :=
  by
    intro f
    exact D.dual_norm_property f

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse