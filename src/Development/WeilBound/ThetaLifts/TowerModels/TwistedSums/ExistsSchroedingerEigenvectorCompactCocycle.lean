module

public import Mathlib
public import Formalism.SharpRestriction.GlobalSchurBounds.StandardLattice
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousAtPlace
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSplittingSplitOm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousCharacterCocycleTrivialNearZeroStatement
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSchroedingerEigenvectorCompactCocycle

@[expose] public section

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice
open IsDedekindDomain NumberField MeasureTheory Matrix
open Classical
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model HasExp SplitsFully Chars)
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open scoped GlobalTheory.VacAny
open GlobalTheory.WeilM

namespace Tw.VacLoc
open _root_.GlobalTheory

theorem exists_schr_eigen : ∀ {F : Type} [Field F] [NumberField F] (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (ψ : AddChar (Fv F v) ℂ), Continuous ψ → ψ ≠ 1 →
    ∀ {κ M : Type} [Fintype κ] [Fintype M] (u : M → (κ → Fv F v) × (κ → Fv F v))
      (χ : (M → v.adicCompletionIntegers F) → ℂ), Continuous χ →
      (∀ a : M → v.adicCompletionIntegers F, ∑ m, (a m : Fv F v) • u m = 0 → χ a = 1) →
      (∀ a b : M → v.adicCompletionIntegers F, χ (a + b) = χ a * χ b *
        ψ (-(⅟(2 : Fv F v) * ((∑ m, (a m : Fv F v) • u m).1 ⬝ᵥ (∑ m, (b m : Fv F v) • u m).2 -
          (∑ m, (b m : Fv F v) • u m).1 ⬝ᵥ (∑ m, (a m : Fv F v) • u m).2)))) →
      ∃ φ ∈ GlobalTheory.WeilM.SB (κ → Fv F v), φ ≠ 0 ∧
        ∀ a : M → v.adicCompletionIntegers F, GlobalTheory.WeilM.schr ψ (∑ m, (a m : Fv F v) • u m) φ = χ a • φ :=
  @GlobalTheory.VacLoc.exists_schr_eigen

end Tw.VacLoc
