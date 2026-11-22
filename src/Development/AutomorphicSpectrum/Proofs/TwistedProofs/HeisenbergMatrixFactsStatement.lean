module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryHeisenbergRadicalCoordinatesStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.heisenberg_matrix_facts : Heis :=
  @_root_.GlobalTheory.T.unitary_heisenberg_radical_coordinates
