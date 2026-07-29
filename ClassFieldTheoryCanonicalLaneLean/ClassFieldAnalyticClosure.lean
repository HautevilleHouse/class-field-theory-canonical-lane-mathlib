import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassFieldTheoryCanonicalLaneLean.ClassFieldAnalyticCertificate

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def classFieldAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject
  localWitness := "Class field theory certificate with global/local reciprocity, Brauer group, Takagi existence, and Chebotarev."
  bridgeEvidence := "source-derived Lean certificate fields"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def classFieldAdmissibleClass : AdmissibleClass := {
  object := classFieldAdmittedObject
  endpointSatisfied := ClassFieldAnalyticCertificateClosed sourceClassFieldAnalyticCertificate
  remainderRecorded := formalizationCertificate.theoremBoundaryOpen = true
  gateWitness := Or.inl source_class_field_analytic_certificate_closed
}

def ConstrainedClassFieldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_class_field_closure (A : AdmissibleClass) :
    ConstrainedClassFieldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def ClassFieldAdmittedClosure : Prop :=
  ClassFieldAnalyticCertificateClosed sourceClassFieldAnalyticCertificate ∧
  ConstrainedClassFieldClosure classFieldAdmissibleClass

theorem class_field_admitted_closure_checked :
    ClassFieldAdmittedClosure := by
  exact And.intro source_class_field_analytic_certificate_closed
    (constrained_class_field_closure classFieldAdmissibleClass)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse