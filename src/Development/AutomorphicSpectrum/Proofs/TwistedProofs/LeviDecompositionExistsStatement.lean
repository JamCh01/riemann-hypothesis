module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsUnitaryBlockDiagonalLeviElement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.levi_decomposition_exists : LeviExists :=
  @_root_.GlobalTheory.InertZeta.leviExists
