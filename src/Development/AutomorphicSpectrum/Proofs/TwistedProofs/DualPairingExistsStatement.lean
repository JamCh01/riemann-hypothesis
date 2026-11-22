module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DualInterEqSumStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.dual_pairing_exists : Dual :=
  @_root_.GlobalTheory.T.dual_inter_eq_sum'
