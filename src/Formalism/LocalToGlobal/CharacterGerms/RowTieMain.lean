module

public import Formalism.LocalToGlobal.CharacterGerms.HostTraceIdentity
public import Formalism.LocalToGlobal.CharacterGerms.NormOneIntegral
public import Formalism.LocalToGlobal.CharacterGerms.FinTwoNeOneSub
public import Formalism.LocalToGlobal.CharacterGerms.NormOneRowInvariant
public import Formalism.LocalToGlobal.CharacterGerms.NormOneRowDegrees
public import Formalism.LocalToGlobal.CharacterGerms.RowTieGermI
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePHStab
public import Formalism.LocalToGlobal.CharacterGerms.CoeffSingleSubstOfLowDegree
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePCEqEx
public import Formalism.LocalToGlobal.CharacterGerms.IndependenceBoundRaw
public import Formalism.LocalToGlobal.CharacterGerms.RowTieAxes
public import Formalism.LocalToGlobal.CharacterGerms.RankMaximalOfNondegenerate
public import Formalism.LocalToGlobal.CharacterGerms.RowTieTop
public import Formalism.LocalToGlobal.CharacterGerms.RowTieChar
public import Formalism.LocalToGlobal.CharacterGerms.RowTieLab
public import Formalism.LocalToGlobal.CharacterGerms.RowTieValK
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePPTDone
public import Formalism.LocalToGlobal.CharacterGerms.EndomorphismLimitIntegral
public import Formalism.LocalToGlobal.CharacterGerms.RowTieP_TCoord
public import Formalism.LocalToGlobal.CharacterGerms.CharacterHypothesisUnramified
public import Formalism.LocalToGlobal.CharacterGerms.CoeffPowCharFrobenius
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm
public import Formalism.DropLevelBounds.ConstantCoeffVanishing.UbintConstantCoeffEqZero
public import Formalism.LocalToGlobal.CharacterGerms.CoeffFirstPairingLinear
public import Formalism.LocalToGlobal.CharacterGerms.RankMaximalSelfUnconditional
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.NuLocCLeNuPlEBaseChange

@[expose] public section

set_option autoImplicit false

namespace Formalism.L2.FormalSeriesBounds

open NumberField
open ReciprocityTheory.ChartRestriction.G.Geo.Tor

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l) [StarRing (𝓞 E)]

theorem descent_holds : DescentSt Xo c :=
  GlobalTheory.nuLocC_le_nuPlE_baseChange E H Dw l Xo c

end Formalism.L2.FormalSeriesBounds
