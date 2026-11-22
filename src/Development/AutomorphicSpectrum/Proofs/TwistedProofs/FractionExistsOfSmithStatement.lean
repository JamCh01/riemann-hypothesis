module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MatrixLengthExistsOfElementaryDivisors

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.fraction_exists_of_smith : Smith → FracExists :=
  @_root_.GlobalTheory.InertZeta.fracExists_of_smith
