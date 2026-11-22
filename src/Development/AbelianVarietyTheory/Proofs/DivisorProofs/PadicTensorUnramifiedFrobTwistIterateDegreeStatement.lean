module

public import Mathlib
public import Development.AbelianVarietyTheory.Definitions.Divisors.TwOrbMEqTwOrbUOfNormal

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnramifiedExtFrobeniusIterateDegreeEqSelf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProdIterateTwistedConj

@[expose] public section

open ReciprocityTheory.DiscreteGroups.LocalClassField Matrix GlobalTheory.LKRes
theorem _root_.GlobalTheory.T.padicTensorUnramifiedFrobTwist_iterate_degree : ∀ (p : ℕ) [Fact p.Prime] (K : IntermediateField ℚ_[p] (PadicAlgCl p)) (r : ℕ), 0 < r → ∀ x : KQ p K r, (⇑(sigKQ p K r))^[r] x = x :=
  @_root_.GlobalTheory.LKResNrmConj.sigKQ_iterate_self
