module

public import Mathlib
public import Development.WeilBound.CoreStatements.TemperedRepresentationTheory.ArakelovCycleHeights.QpSndStr
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ResidueDegreeOfIsClosedImmersion
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ArFormExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsPullHermPullLine
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HermRepMetricSmooth

@[expose] public section

open GroundTheory.Arith.SchemeCoh.ProjSpace
open ReciprocityTheory.ChartRestriction.G GlobalTheory.CompanionTheory.MPDict

set_option autoImplicit false

namespace GlobalTheory.CompanionTheory.MPSmooth

theorem smooth_of_isHermRep : ∀ (m : ℕ) (n : Fin (m + 1) → ℕ) (M : HermLB (mpStr ℤ m n)) (A : Geo.HermLine (Bk n)),
    IsHermRep M A → Geo.IsSmoothHerm A :=
  GlobalTheory.CompanionTheory.MPDict.SmoothRep.isSmoothHerm_of_isHermRep

end GlobalTheory.CompanionTheory.MPSmooth
