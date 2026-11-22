module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralRightInvariantEqSumOpenSubgroupCosetsStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.cosetIntegral' : CosetIntegral :=
  @_root_.GlobalTheory.T.integral_right_invariant_eq_sum_open_subgroup_cosets
