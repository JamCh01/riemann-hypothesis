module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlockTriangularRowLatticeTriangularBasis

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.span_equality : SpanEq :=
  @_root_.GlobalTheory.InertZeta.RowSpan.spanEq_holds
