module

public import Mathlib
public import Formalism.UnipotentAdelicQuotients.WeylLatDual
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MainProof

@[expose] public section

theorem _root_.GlobalTheory.T.weyl_lattice_duality_padic_minors : WeylLatticeDuality.Stmt :=
  GlobalTheory.WeylLatDualProof.mainProof
