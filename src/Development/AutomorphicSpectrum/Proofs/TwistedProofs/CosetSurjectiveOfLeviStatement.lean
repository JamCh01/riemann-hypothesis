module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryBlockTriangularLeviPartUnitary
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryLeviNormalizesUnipotentRadical
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.UnitaryIwasawaCosetSurjOfLeviElementExists

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.coset_surjective_of_levi : LeviExists → CosetSurj :=
  @_root_.GlobalTheory.InertZeta.cosetSurj_of_leviExists
