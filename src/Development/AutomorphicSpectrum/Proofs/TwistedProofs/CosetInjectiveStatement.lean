module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryIwasawaCellsDisjointStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.coset_injective : CosetInj :=
  @_root_.GlobalTheory.T.unitary_iwasawa_cells_disjoint
