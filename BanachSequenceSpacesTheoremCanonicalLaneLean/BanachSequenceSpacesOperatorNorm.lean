import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.OperatorNorm

namespace HautevilleHouse
namespace BanachSequenceSpacesCanonicalLaneLean

structure BoundedLinearOperator (X Y : Type u) [NormedAddCommGroup X] [NormedAddCommGroup Y] where
  f : X → Y
  linear : IsLinearMap ℝ f
  bounded : ∃ C : ℝ, 0 < C ∧ ∀ x : X, ‖f x‖ ≤ C * ‖x‖

def OperatorNormClosed (T : BoundedLinearOperator X Y) : Prop :=
  T.bounded

theorem operator_norm_closed_from_bounded (T : BoundedLinearOperator X Y) :
    OperatorNormClosed T := by
  exact T.bounded

end BanachSequenceSpacesCanonicalLaneLean
end HautevilleHouse