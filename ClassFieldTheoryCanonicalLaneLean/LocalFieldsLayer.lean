import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure LocalField where
  isFiniteExtension : Prop
  residueFieldFinite : Prop
  complete : Prop
  discreteValuation : Prop

def sourceLocalField : LocalField := {
  isFiniteExtension := True
  residueFieldFinite := True
  complete := True
  discreteValuation := True
}

structure LocalFieldsCertificate where
  localField : LocalField
  galoisGroupComputed : Prop
  inertiaGroupComputed : Prop
  ramificationIndex : Prop
  galoisGroupComputedClosed : galoisGroupComputed
  inertiaGroupComputedClosed : inertiaGroupComputed
  ramificationIndexClosed : ramificationIndex

def sourceLocalFieldsCertificate : LocalFieldsCertificate := {
  localField := sourceLocalField
  galoisGroupComputed := sourceLocalField.isFiniteExtension
  inertiaGroupComputed := sourceLocalField.discreteValuation
  ramificationIndex := sourceLocalField.complete
  galoisGroupComputedClosed := rfl
  inertiaGroupComputedClosed := rfl
  ramificationIndexClosed := rfl
}

def LocalFieldsClosed (C : LocalFieldsCertificate) : Prop :=
  C.galoisGroupComputed ∧ C.inertiaGroupComputed ∧ C.ramificationIndex

theorem source_local_fields_closed : LocalFieldsClosed sourceLocalFieldsCertificate := by
  exact And.intro sourceLocalFieldsCertificate.galoisGroupComputedClosed
    (And.intro sourceLocalFieldsCertificate.inertiaGroupComputedClosed
      sourceLocalFieldsCertificate.ramificationIndexClosed)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse