module

public import Mathlib
public import Development.AbelianVarietyTheory.Definitions.Divisors.NotCompactOfMEqOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.InfUniv

public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.IsAbelianSchemeOfIsGrpPullback
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.PushEquivSymmLeft
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHarrisTaylorObjectPullbackTer

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.UPel.Sm GlobalTheory.Cris GlobalTheory.DeRham
theorem _root_.GlobalTheory.T.exists_harrisTaylorObject_pullback_along : ∀ (p : ℕ) [Fact p.Prime] (D : GlobalTheory.UPel.HT.Datum p) (R : Type) [CommRing R] (b : GlobalTheory.UPel.HT.Base D R) (N : ℕ) (S S' : Scheme.{0}) (s : S ⟶ Sp R) (f : S' ⟶ S) (o : GlobalTheory.UPel.HT.Obj b N s), ∃ o' : GlobalTheory.UPel.HT.Obj b N (f ≫ s), Nonempty (GlobalTheory.UPel.HT.ObjMap o' o f) :=
  @_root_.GlobalTheory.T.exists_harrisTaylorObject_pullback
