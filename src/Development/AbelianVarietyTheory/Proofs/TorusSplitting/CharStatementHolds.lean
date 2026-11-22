module

public import Mathlib
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.SplitSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GaussianTailBound
public import Development.AbelianVarietyTheory.Proofs.TorusSplitting.NearestPlaneRounding
public import Development.AbelianVarietyTheory.Proofs.TorusSplitting.ExistsShortIntegersSpan
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SquareIntegrability.GCauchyHolds

@[expose] public section

open NumberField Complex ReciprocityTheory.ChartRestriction.G.I2

namespace GlobalTheory

theorem charStatement_holds : CharStatement :=
  ReciprocityTheory.ChartRestriction.G.I2.char_holds

end GlobalTheory
