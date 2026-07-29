import BanachSequenceSpacesTheoremCanonicalLaneLean.SequenceSpaceFoundation

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure SchurPropertyPackage (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  schurProperty : Prop
  weakConvergenceImpliesNorm : Prop
  ℓ1example : p = 1 → schurProperty
  ℓ∞counterexample : p = ∞ → ¬ schurProperty

structure SchurPropertyEvidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) (S : SchurPropertyPackage p ℓ) where
  schurPropertyClosed : S.schurProperty
  weakConvergenceImpliesNormClosed : S.weakConvergenceImpliesNorm
  ℓ1exampleClosed : ∀ h : p = 1, S.schurProperty
  ℓ∞counterexampleClosed : ∀ h : p = ∞, ¬ S.schurProperty

def SchurPropertyClosed (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) (S : SchurPropertyPackage p ℓ) : Prop :=
  S.schurProperty ∧ S.weakConvergenceImpliesNorm ∧
  (∀ h : p = 1, S.schurProperty) ∧ (∀ h : p = ∞, ¬ S.schurProperty)

theorem schur_property_closed_from_evidence (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) (S : SchurPropertyPackage p ℓ)
    (E : SchurPropertyEvidence p ℓ S) : SchurPropertyClosed p ℓ S := by
  exact And.intro E.schurPropertyClosed (And.intro E.weakConvergenceImpliesNormClosed
    (And.intro E.ℓ1exampleClosed E.ℓ∞counterexampleClosed))

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse