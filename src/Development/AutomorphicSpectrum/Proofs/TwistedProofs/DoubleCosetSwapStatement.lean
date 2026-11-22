module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BiInvariantReplaceSameDoubleCosetSumsStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.double_coset_swap : DosetSwap :=
  @_root_.GlobalTheory.T.biInvariant_replace_same_double_coset_sums
