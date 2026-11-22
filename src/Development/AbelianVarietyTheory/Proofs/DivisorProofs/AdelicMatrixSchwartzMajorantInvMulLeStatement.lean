module

public import Mathlib
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.WeilThetaConvergence
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.RealSizeNonneg

public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AdelicMatrixSchwartzMajorantMeasurableRationalSh
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsCommonLevelCompactTranslatesThetaFunction
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.CompactAverageProjectionThetaSchrodinger

@[expose] public section

open scoped Matrix NNReal ENNReal TensorProduct
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory
open GlobalTheory.IndefiniteRowSideFullHecke.ModerateGrowthSchwartz (schwartzA)
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.adelicMatrixSchwartzMajorant_inv_mul_le : ∀ (D : D7) (θ : InfFam D), IsInfFam θ → ∀ (V : HSp D) (n : ℕ) (Q : Set (GA D V)), IsCompact Q → ∀ K : Set (Mx D V.rank n), IsCompact K → ∃ K' : Set (Mx D V.rank n), IsCompact K' ∧ ∀ N : ℕ, ∃ C : ℝ, 0 ≤ C ∧ ∀ y ∈ Q, ∀ x : Mx D V.rank n, GlobalTheory.Unf.maj θ K N (HMul.hMul (Formalism.L2.Theta.mt V y⁻¹) x : Mx D V.rank n) ≤ C * GlobalTheory.Unf.maj θ K' N x :=
  @_root_.GlobalTheory.RegSchProj.maj_mt_le
