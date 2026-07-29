import ClassFieldTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassFieldTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.numberField (And.intro A.object.ideleGroup A.object.reciprocityMap)

end ClassFieldTheoryCanonicalLaneLean
end HautevilleHouse