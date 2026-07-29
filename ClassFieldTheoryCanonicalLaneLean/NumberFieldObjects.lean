import Mathlib.NumberTheory.ClassNumber
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure NumberField where
  signature : ℕ × ℕ
  discriminant : ℤ
  regulator : ℝ
  classNumber : ℕ
  unitRank : ℕ

def defaultNumberField : NumberField := {
  signature := (2,1),
  discriminant := -23,
  regulator := 1.324,
  classNumber := 1,
  unitRank := 2
}

structure IdealClassGroup where
  numberField : NumberField
  order : ℕ
  cyclicDecomposition : List ℕ

def defaultIdealClassGroup : IdealClassGroup := {
  numberField := defaultNumberField,
  order := 1,
  cyclicDecomposition := []
}

structure RayClassGroup where
  numberField : NumberField
  modulus : ℤ
  order : ℕ

def defaultRayClassGroup : RayClassGroup := {
  numberField := defaultNumberField,
  modulus := 1,
  order := 1
}

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse