import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSequenceSpacesTheoremCanonicalLaneLean.BanachSequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure SchauderBasis (B : BanachSequenceSpaceStructure) where
  basis_vectors : ℕ → B.carrier
  expansion : ∀ x : B.carrier, ∃! (c : ℕ → ℝ), x = ∑' n : ℕ, c n • basis_vectors n
  uniqueness : ∀ (c d : ℕ → ℝ), (∀ x : B.carrier, x = ∑' n : ℕ, c n • basis_vectors n) ↔ (∀ x : B.carrier, x = ∑' n : ℕ, d n • basis_vectors n) → c = d

def SchauderBasisClosed (B : BanachSequenceSpaceStructure) (S : SchauderBasis B) : Prop :=
  ∀ x : B.carrier, ∃! (c : ℕ → ℝ), x = ∑' n : ℕ, c n • S.basis_vectors n

theorem schauder_basis_closed_self (B : BanachSequenceSpaceStructure) (S : SchauderBasis B) : SchauderBasisClosed B S :=
  by
    intro x
    exact S.expansion x

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse