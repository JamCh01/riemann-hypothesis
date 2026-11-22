module

public import Mathlib
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.HasLenOfLatLen

public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SmithNormalFormIntegralMatrix
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ElementaryDivisorsExistDiscretelyValuedStatement

@[expose] public section

open GlobalTheory.InertZeta
theorem _root_.GlobalTheory.T.smith_normal_form_exists : Smith :=
  @_root_.GlobalTheory.T.elementaryDivisors_exist_discretelyValued
