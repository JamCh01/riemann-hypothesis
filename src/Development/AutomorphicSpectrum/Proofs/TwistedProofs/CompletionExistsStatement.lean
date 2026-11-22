module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DoubledLatticePrimitiveIsotropicFrameCompletion

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.completion_exists : Completion :=
  @_root_.GlobalTheory.FrameCompletion.completion
