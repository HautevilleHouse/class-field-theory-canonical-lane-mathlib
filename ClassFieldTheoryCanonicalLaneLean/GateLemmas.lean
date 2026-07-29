import ClassFieldTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.globalClosed ∨ A.localClosed ∨ A.reciprocityClosed

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse