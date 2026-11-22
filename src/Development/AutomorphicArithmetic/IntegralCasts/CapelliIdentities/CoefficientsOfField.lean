module

public import Mathlib
public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeightAndVanishing.DirichletPrimeToLPartMulLPowerPart
import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ReducedCoefficients

@[expose] public section

theorem UpperTheory.Reformulated.B.CoefficientsOfField.coef_of_field :
    ∀ {l : ℕ} [_inst : Fact (Nat.Prime l)]
    (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] ↥K],
    ∃ (c : UpperTheory.V.HV.Coef l),
      ∀ x ∈ K,
        ‖x‖ ≤ (1 : ℝ) → x ∈ c.O :=
  @UpperTheory.Reformulated.B.CoefficientRingContainingIntegers.rc_coef
