module

public import Mathlib
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GaussianTailBound
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GCauchyHolds

@[expose] public section

open NumberField Complex ReciprocityTheory.ChartRestriction.G.I2

theorem _root_.GlobalTheory.T.greedy_splitting_principal_torus_exists : SplitStatement :=
  ReciprocityTheory.ChartRestriction.G.I2.split_holds
