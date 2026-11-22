module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.MeasInvStatementPf
import Development.AbelianVarietyTheory.Proofs.TorusHaarMeasure.MeasureStatements

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.AR.Up

open NumberField ReciprocityTheory.ChartRestriction.G.FD

theorem FrameMeasStatement_holds {E : Type} [Field E] [NumberField E] [IsCMField E] :
    FrameMeasStatement (E := E) :=
  @GlobalTheory.FrameMeasureClosed.frameMeas_holds E _ _ _

end ReciprocityTheory.ChartRestriction.G.AR.Up
