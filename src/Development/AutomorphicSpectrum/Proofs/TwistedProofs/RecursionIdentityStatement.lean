module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryLeviSummationGeometricSeries

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.recursion_identity : Step :=
  @_root_.GlobalTheory.InertZeta.step
