module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SmallCornerOfHeisenbergDualityStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.small_corner_of_heisenberg_dual : Heis → Dual → SmallCorner :=
  @_root_.GlobalTheory.T.small_corner_of_heisenberg_duality
