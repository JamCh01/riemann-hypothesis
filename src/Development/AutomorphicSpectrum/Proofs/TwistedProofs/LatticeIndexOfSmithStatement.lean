module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RelIndexUpLatEqProd
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralLatticeInverseIndexOfElementaryDivisors

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.lattice_index_of_smith : Smith → LatIndex :=
  @_root_.GlobalTheory.InertZeta.latIndex_of_smith
