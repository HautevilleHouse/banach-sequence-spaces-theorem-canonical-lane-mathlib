import BanachSequenceSpacesTheoremCanonicalLaneLean.SequenceSpaceFoundation

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure EmbeddingPackage (p q : ℝ≥0∞) (ℓp : ℓpSpacePackage p) (ℓq : ℓpSpacePackage q) where
  containsIsometricCopy : Prop
  embeddingExists : Prop
  pLeqQ : p ≤ q → containsIsometricCopy
  qLessP : q < p → ¬ containsIsometricCopy

structure ComplementedSubspacePackage (p : ℝ≥0∞) (ℓ : ℓpSpacePackage p) where
  hasComplementedSubspace : Prop
  ℓ2Complemented : p = 2 → hasComplementedSubspace
  otherUncomplemented : p ≠ 2 → (∃ (subspace : Set ℓ.carrier), Submodule ℓ.carrier subspace ∧ ¬ ∃ (complement : Submodule ℓ.carrier), IsCompl subspace complement)

structure EmbeddingEvidence (p q : ℝ≥0∞) (ℓp : ℓpSpacePackage p) (ℓq : ℓpSpacePackage q)
    (E : EmbeddingPackage p q ℓp ℓq) (C : ComplementedSubspacePackage p ℓp) where
  embeddingExistsClosed : E.embeddingExists
  pLeqQEmbedding : ∀ h : p ≤ q, E.containsIsometricCopy
  qLessPNoEmbedding : ∀ h : q < p, ¬ E.containsIsometricCopy
  ℓ2ComplementedClosed : ∀ h : p = 2, C.hasComplementedSubspace

def EmbeddingClosed (p q : ℝ≥0∞) (ℓp : ℓpSpacePackage p) (ℓq : ℓpSpacePackage q)
    (E : EmbeddingPackage p q ℓp ℓq) (C : ComplementedSubspacePackage p ℓp) : Prop :=
  E.embeddingExists ∧ (∀ h : p ≤ q, E.containsIsometricCopy) ∧ (∀ h : q < p, ¬ E.containsIsometricCopy) ∧
  (∀ h : p = 2, C.hasComplementedSubspace)

theorem embedding_closed_from_evidence (p q : ℝ≥0∞) (ℓp : ℓpSpacePackage p) (ℓq : ℓpSpacePackage q)
    (E : EmbeddingPackage p q ℓp ℓq) (C : ComplementedSubspacePackage p ℓp)
    (Ev : EmbeddingEvidence p q ℓp ℓq E C) : EmbeddingClosed p q ℓp ℓq E C := by
  exact And.intro Ev.embeddingExistsClosed (And.intro Ev.pLeqQEmbedding
    (And.intro Ev.qLessPNoEmbedding Ev.ℓ2ComplementedClosed))

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse