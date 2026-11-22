module

public import Mathlib
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.HodgeComparisonCompatibility
import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.CmpHodgeTied

@[expose] public section

theorem _root_.GlobalTheory.T.CmpHodgeTied_holds : GlobalTheory.CompanionTheory.Ar.HodgeComparisonCompatibility :=
  PositivityTheory.UnitarySelfGeneration.cmpHodgeTiedAlt
