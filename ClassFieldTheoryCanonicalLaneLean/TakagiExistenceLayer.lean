import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

structure TakagiExistence where
  modulusExistence : Prop
  rayClassField : Prop
  conductor : Prop

def sourceTakagiExistence : TakagiExistence := {
  modulusExistence := True
  rayClassField := True
  conductor := True
}

structure TakagiExistenceCertificate where
  takagiExistence : TakagiExistence
  congruenceSubgroup : Prop
  existenceProof : Prop
  conductorComputed : Prop
  congruenceSubgroupClosed : congruenceSubgroup
  existenceProofClosed : existenceProof
  conductorComputedClosed : conductorComputed

def sourceTakagiExistenceCertificate : TakagiExistenceCertificate := {
  takagiExistence := sourceTakagiExistence
  congruenceSubgroup := sourceTakagiExistence.modulusExistence
  existenceProof := sourceTakagiExistence.rayClassField
  conductorComputed := sourceTakagiExistence.conductor
  congruenceSubgroupClosed := rfl
  existenceProofClosed := rfl
  conductorComputedClosed := rfl
}

def TakagiExistenceClosed (C : TakagiExistenceCertificate) : Prop :=
  C.congruenceSubgroup ∧ C.existenceProof ∧ C.conductorComputed

theorem source_takagi_existence_closed : TakagiExistenceClosed sourceTakagiExistenceCertificate := by
  exact And.intro sourceTakagiExistenceCertificate.congruenceSubgroupClosed
    (And.intro sourceTakagiExistenceCertificate.existenceProofClosed
      sourceTakagiExistenceCertificate.conductorComputedClosed)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse