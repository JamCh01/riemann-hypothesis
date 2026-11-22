module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SphericalInductionTransitivityOfLeviExists

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.spherical_transitive_of_levi : LeviExists → SphTrans :=
  @_root_.GlobalTheory.InertZeta.sphTrans
