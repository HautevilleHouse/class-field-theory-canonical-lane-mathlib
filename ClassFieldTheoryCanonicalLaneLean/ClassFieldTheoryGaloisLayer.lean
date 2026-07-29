import ClassFieldTheoryCanonicalLaneLean.ClassFieldTheoryCanonicalLane

/-!
# Galois Layer for Class Field Theory

This module defines Galois groups and abelian extensions as the target of the reciprocity map.
-/

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure GaloisGroup where
  groupOrder : ℕ
  abelian : Prop

def defaultGaloisGroup : GaloisGroup := {
  groupOrder := 1
  abelian := True
}

structure AbelianExtension where
  baseField : NumberField
  galoisGroup : GaloisGroup

def defaultAbelianExtension : AbelianExtension := {
  baseField := defaultNumberField
  galoisGroup := defaultGaloisGroup
}

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse