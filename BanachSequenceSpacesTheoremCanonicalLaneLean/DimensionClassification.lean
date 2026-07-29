import BanachSequenceSpacesTheoremCanonicalLaneLean.SequenceSpaceFoundation

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure ReflexivityPackage (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  reflexive : Prop
  pNotOneOrInfinite : p ≠ 1 ∧ p ≠ ∞ → reflexive
  ℓ1notReflexive : p = 1 → ¬ reflexive
  ℓ∞notReflexive : p = ∞ → ¬ reflexive

structure SeparabilityPackage (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  separable : Prop
  pNotInfinite : p ≠ ∞ → separable
  ℓ∞notSeparable : p = ∞ → ¬ separable

structure DimensionEvidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p)
    (R : ReflexivityPackage p ℓ) (S : SeparabilityPackage p ℓ) where
  reflexiveClosed : R.reflexive
  separableClosed : S.separable
  pNotOneOrInfiniteReflexive : ∀ h : p ≠ 1 ∧ p ≠ ∞, R.reflexive
  ℓ1notReflexive : ∀ h : p = 1, ¬ R.reflexive
  ℓ∞notReflexive : ∀ h : p = ∞, ¬ R.reflexive
  pNotInfiniteSeparable : ∀ h : p ≠ ∞, S.separable
  ℓ∞notSeparable : ∀ h : p = ∞, ¬ S.separable

def DimensionClosed (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p)
    (R : ReflexivityPackage p ℓ) (S : SeparabilityPackage p ℓ) : Prop :=
  R.reflexive ∧ S.separable ∧
  (∀ h : p ≠ 1 ∧ p ≠ ∞, R.reflexive) ∧ (∀ h : p = 1, ¬ R.reflexive) ∧ (∀ h : p = ∞, ¬ R.reflexive) ∧
  (∀ h : p ≠ ∞, S.separable) ∧ (∀ h : p = ∞, ¬ S.separable)

theorem dimension_closed_from_evidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p)
    (R : ReflexivityPackage p ℓ) (S : SeparabilityPackage p ℓ) (E : DimensionEvidence p ℓ R S) :
    DimensionClosed p ℓ R S := by
  exact And.intro E.reflexiveClosed (And.intro E.separableClosed
    (And.intro E.pNotOneOrInfiniteReflexive (And.intro E.ℓ1notReflexive
      (And.intro E.ℓ∞notReflexive (And.intro E.pNotInfiniteSeparable E.ℓ∞notSeparable)))))

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse