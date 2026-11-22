module

public import Mathlib
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.HodgeTateNormComparison
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.IsPolLatticePlane

public import Development.WeilBound.CoreStatements.HodgeTatePoints.DualUnique
public import Development.WeilBound.CoreStatements.HodgeTatePoints.GcChart
public import Development.WeilBound.CoreStatements.HodgeTatePoints.GdChartFin
public import Development.WeilBound.CoreStatements.HodgeTatePoints.GdSplit
import Development.WeilBound.CoreStatements.HodgeTatePoints.FinrankDualEqOfProjective

@[expose] public section

open Module NumberField GlobalTheory.CompanionTheory.Ar.HT TensorProduct
theorem _root_.GlobalTheory.T.chart_sequence_holds : ChartSequence :=
  @_root_.PositivityTheory.HtPt.Ge.chart_sequence
