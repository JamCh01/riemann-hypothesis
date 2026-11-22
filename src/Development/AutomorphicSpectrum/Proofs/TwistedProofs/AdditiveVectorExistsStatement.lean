module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.LatticeAddVectorDetValuationStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.additive_vector_exists : AddVec :=
  @_root_.GlobalTheory.T.lattice_add_vector_det_valuation
