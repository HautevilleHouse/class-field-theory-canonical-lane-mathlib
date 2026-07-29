import ClassFieldTheoryCanonicalLaneLean.ClassFieldTheoryCanonicalLane

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

-- Admissible class for class field theory
structure AdmissibleClass where
  object : AdmissibleClassFieldTheory
  globalClosed : Prop
  localClosed : Prop
  reciprocityClosed : Prop
  gateWitness : globalClosed ∨ localClosed ∨ reciprocityClosed

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.globalClosed ∨ A.localClosed ∨ A.reciprocityClosed)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse