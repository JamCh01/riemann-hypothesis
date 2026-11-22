module

public import Mathlib
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.Pull1
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsPeriodOn
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.UpVApply
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagModelBaseProjectionPoints
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.LogResolutionFromOrbitCharts
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.HoloMapOfLocalProductCharts
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.MinorIJLowerUniSwapStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.PMatStepColsEntryStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsLowerUniBlockDiagFactorizationStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMapFrameRestrictionStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMapFrameRestrictionRegularStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalResolutionOpenStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalDegreeEstimateStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.UpVSmul
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalIntegrabilityStatement
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.MinorMulSelf
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.ChartImmersion
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.CardPIdxEqChoose
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalDegreeBound
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalNormComparison
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FrameDataLocalResolutionRegular
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.PRhoContinuous
import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagBundlePartialBlockMap
import Development.WeilBound.CoreStatements.FlagImmersions.IsHolToOfLocal

@[expose] public section

open MvPolynomial MeasureTheory Filter Topology Matrix ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 GlobalTheory.CompanionTheory.Ar.PB GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree
open scoped ComplexOrder Classical
open GlobalTheory.CompanionTheory.Ar.PB.WSq GlobalTheory.CompanionTheory.Ar.PB.WMan
open GlobalTheory.CompanionTheory.Ar.PB.PFl
open GlobalTheory.CompanionTheory.Ar.Cmp.SncRes GlobalTheory.CompanionTheory.Ar.PB.WMan.Gen

noncomputable section

namespace PositivityTheory.Xgp.c_smooth

theorem exists_res {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {P : Ideal (MRing ι)} {e : ℕ}
    (hP : IsMultiHomogIdeal P) (hnd : ¬ (⊤ : Ideal (MRing ι)) ≤ P)
    (hcov : ∀ z ∈ mcPts P, ∃ C : OrbitChart P e, z ∈ C.O) :
    ∃ R : AnLogRes P ⊤ e, ∀ C : OrbitChart P e, (mcPts P).Nonempty → ∃ ψ : OpenPartialHomeomorph R.X (Fin e → ℂ),
      IsCompatChart R.A ψ ∧ ψ.target = C.D ∧ (∀ x, x ∈ ψ.source ↔ R.lift x x ∈ C.O) ∧
        ∀ x ∈ ψ.source, SameOrbit (C.φ (ψ x)) (R.lift x x) :=
  GlobalTheory.CompanionTheory.Ar.PB.PFl.exists_res hP hnd hcov

theorem not_mem_top {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (z : (Σ k, ι k) → ℂ) :
    z ∉ mcPts (⊤ : Ideal (MRing ι)) :=
  RootFieldNumerics.Pts.not_mem_top z

theorem main : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Φ : Type) [Field Φ] (y : (Σ k, ι k) → Φ) (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (M : FlagModel y Ψ N j) (n d : ℕ) (Rb : AnLogRes (mCoordIdeal M.x) ⊤ n), d = n + Fintype.card Ψ * (j.choose 2 + (N - j).choose 2) → ∀ (keep : Ψ × Fin N → Prop) (Kk : Type) [Fintype Kk] (ιk : Kk → Type) [∀ k, Fintype (ιk k)] (κ : Kk → K) (v : (Σ k, ιk k) → (Σ k, ι k)), IsBlockMap κ v → (∀ k, k ∈ Set.range κ ↔ ((∀ p, M.blk p ≠ some k) ∨ ∃ p, keep p ∧ M.blk p = some k)) → ∃ (e : ℕ) (R : AnLogRes (mCoordIdeal (y ∘ v)) ⊤ e), ((∀ p, keep p) → e = d) ∧ ∃ pr : R.X → Rb.X, HoloMap R.A Rb.A pr ∧ (∀ x, ∃ z ∈ mcPts (mCoordIdeal y), z ∘ v = R.lift x x ∧ SameOrbit (basePart M.blk z) (Rb.lift (pr x) (pr x))) ∧ ∀ x, ∃ (ψ : OpenPartialHomeomorph R.X (Fin e → ℂ)) (kb : Fin Rb.A.n) (σ : Fin n ↪ Fin e), IsCompatChart R.A ψ ∧ x ∈ ψ.source ∧ (∀ x' ∈ ψ.source, pr x' ∈ (Rb.A.chart kb).source ∧ ∀ i, Rb.A.chart kb (pr x') i = ψ x' (σ i)) :=
  @GlobalTheory.CompanionTheory.Ar.PB.PFl.main

end PositivityTheory.Xgp.c_smooth
