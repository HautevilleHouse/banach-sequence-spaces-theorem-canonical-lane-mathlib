import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

structure BanachSequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  normNonnegative : ∀ x, norm x ≥ 0
  normZero : ∀ x, norm x = 0 ↔ x = 0
  normScalar : ∀ (a : ℝ) (x : carrier), norm (a • x) = |a| * norm x
  normTriangle : ∀ x y, norm (x + y) ≤ norm x + norm y
  complete : Prop

def banachSequenceSpaceComplete (B : BanachSequenceSpace) : Prop :=
  B.complete

structure BanachAdmittedObject where
  space : BanachSequenceSpace
  sequence : ℕ → space.carrier
  converges : Prop
  limit : space.carrier
  convergenceProof : converges
  limitInSpace : limit ∈ space.carrier
  isBanach : banachSequenceSpaceComplete space

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse