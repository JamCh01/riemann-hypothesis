module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LengthCountGeneratingSeriesFormulaStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.generating_function_identity : GenFun :=
  @_root_.GlobalTheory.T.length_count_generating_series_formula
