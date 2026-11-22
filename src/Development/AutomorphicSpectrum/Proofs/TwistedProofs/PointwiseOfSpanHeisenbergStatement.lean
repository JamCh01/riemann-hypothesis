module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LeviRadicalProductLengthOfLatticeStepsStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.pointwise_of_span_heisenberg : AddVec → Dual → SpanEq → Heis → Pointwise :=
  @_root_.GlobalTheory.T.leviRadicalProductLength_of_lattice_steps
