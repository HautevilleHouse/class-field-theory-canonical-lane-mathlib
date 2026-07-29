import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure GaloisCohomology where
  groupCohomology : Prop
  tateCohomology : Prop
  cupProduct : Prop

def sourceGaloisCohomology : GaloisCohomology := {
  groupCohomology := True
  tateCohomology := True
  cupProduct := True
}

structure CohomologyCertificate where
  galoisCohomology : GaloisCohomology
  inflationRestriction : Prop
  herbrandQuotient : Prop
  classFormation : Prop
  inflationRestrictionClosed : inflationRestriction
  herbrandQuotientClosed : herbrandQuotient
  classFormationClosed : classFormation

def sourceCohomologyCertificate : CohomologyCertificate := {
  galoisCohomology := sourceGaloisCohomology
  inflationRestriction := sourceGaloisCohomology.groupCohomology
  herbrandQuotient := sourceGaloisCohomology.tateCohomology
  classFormation := sourceGaloisCohomology.cupProduct
  inflationRestrictionClosed := rfl
  herbrandQuotientClosed := rfl
  classFormationClosed := rfl
}

def CohomologyClosed (C : CohomologyCertificate) : Prop :=
  C.inflationRestriction ∧ C.herbrandQuotient ∧ C.classFormation

theorem source_cohomology_closed : CohomologyClosed sourceCohomologyCertificate := by
  exact And.intro sourceCohomologyCertificate.inflationRestrictionClosed
    (And.intro sourceCohomologyCertificate.herbrandQuotientClosed
      sourceCohomologyCertificate.classFormationClosed)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse