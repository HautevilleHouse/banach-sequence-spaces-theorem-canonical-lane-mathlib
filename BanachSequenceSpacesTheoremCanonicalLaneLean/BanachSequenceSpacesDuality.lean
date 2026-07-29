import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Dual
import Mathlib.Analysis.SpecialFunctions.Power

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

structure DualityPair (p q : ℝ) (hp : 1 < p) (hq : 1 < q) (h : 1/p + 1/q = 1) where
  l_p : Type u
  l_q : Type v
  normLp : l_p → ℝ
  normLq : l_q → ℝ
  pairing : l_p → l_q → ℝ
  isDual : IsDualPairing l_p l_q p q hp hq h

def DualityClosed (D : DualityPair p q hp hq h) : Prop :=
  D.isDual

theorem duality_pair_closed (D : DualityPair p q hp hq h) : DualityClosed D := by
  exact D.isDual

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse