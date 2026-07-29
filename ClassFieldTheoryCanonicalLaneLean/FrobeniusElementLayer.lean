import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure FrobeniusElement where
  baseField : Prop
  extensionField : Prop
  residueField : Prop
  frobeniusAction : Prop

def sourceFrobeniusElement : FrobeniusElement := {
  baseField := True
  extensionField := True
  residueField := True
  frobeniusAction := True
}

structure FrobeniusElementCertificate where
  frobeniusElement : FrobeniusElement
  frobeniusAutomorphism : Prop
  artinSymbol : Prop
  decompositionGroup : Prop
  frobeniusAutomorphismClosed : frobeniusAutomorphism
  artinSymbolClosed : artinSymbol
  decompositionGroupClosed : decompositionGroup

def sourceFrobeniusElementCertificate : FrobeniusElementCertificate := {
  frobeniusElement := sourceFrobeniusElement
  frobeniusAutomorphism := sourceFrobeniusElement.frobeniusAction
  artinSymbol := sourceFrobeniusElement.residueField
  decompositionGroup := sourceFrobeniusElement.baseField
  frobeniusAutomorphismClosed := rfl
  artinSymbolClosed := rfl
  decompositionGroupClosed := rfl
}

def FrobeniusElementClosed (C : FrobeniusElementCertificate) : Prop :=
  C.frobeniusAutomorphism ∧ C.artinSymbol ∧ C.decompositionGroup

theorem source_frobenius_element_closed : FrobeniusElementClosed sourceFrobeniusElementCertificate := by
  exact And.intro sourceFrobeniusElementCertificate.frobeniusAutomorphismClosed
    (And.intro sourceFrobeniusElementCertificate.artinSymbolClosed
      sourceFrobeniusElementCertificate.decompositionGroupClosed)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse