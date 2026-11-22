module

public import Mathlib
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ChernDegreeComplex
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsPresents
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegreeEqIntegralTopChernFormComplex

@[expose] public section

namespace PositivityTheory.Tls2.Chern2

theorem chernDegreeComplex : GlobalTheory.Published.ChernDegreeComplex :=
  GlobalTheory.ChernDegree.chernDegreeComplex

end PositivityTheory.Tls2.Chern2
