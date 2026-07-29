import HautevilleHouse.BanachSequenceSpacesTheoremCanonicalLaneLean.BridgeGateLemmas

namespace HautevilleHouse
namespace BanachSequenceSpacesTheoremCanonicalLaneLean

def ConstrainedBanachSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_sequence_endgame (A : AdmissibleClass) :
    ConstrainedBanachSequenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachSequenceSpacesTheoremCanonicalLaneLean
end HautevilleHouse