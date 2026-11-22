module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryRankLeOneIntegralPoints

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.small_rank_bound : SmallRank :=
  @_root_.GlobalTheory.InertZeta.smallRank
