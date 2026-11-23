module

public import Mathlib

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

def hNum (n q : ℕ) : ℝ :=
  max (2 + max (3 * (n : ℝ) / 2) (1 + (n : ℝ) * ((n - q : ℕ) : ℝ) * (q : ℝ)))
    (max (16 * (n : ℝ) * (min (n - q) q : ℕ) + 8 * Real.sqrt (2 * ((min (n - q) q : ℕ) : ℝ)) + 2)
      (8 * Real.sqrt (2 * ((min (n - q) q : ℕ) : ℝ)) *
        (4 * max (2 * (n : ℝ) * ((min (n - q) q : ℕ) : ℝ)) (2 * ((q : ℝ) - 1) * (n : ℝ) ^ 2) + 1)))

def GapNumStatement : Prop :=
  ∀ (n q t : ℕ) (x : ℝ), 2 ≤ n → 1 ≤ q → 2 * q ≤ n + 1 → n + 5 ≤ t →
    2 * ((n + 2 * q * t : ℕ) : ℝ) ^ 3 + (t : ℝ) + 3 < x → hNum n q < x

theorem gapNum_key (Q Nn T : ℝ) (hQ : 1 ≤ Q) (hN : 2 ≤ Nn) (hT : Nn + 5 ≤ T) :
    160 * Q ^ 2 * Nn ^ 2 ≤ 2 * (Nn + 2 * Q * T) ^ 3 := by
  have hQ0 : 0 ≤ Q := by linarith
  have hN0 : 0 ≤ Nn := by linarith
  have hT0 : 0 ≤ T := by linarith
  have h1 : (2 * Q * T) ^ 3 ≤ (Nn + 2 * Q * T) ^ 3 :=
    pow_le_pow_left₀ (by positivity) (by linarith) 3
  have h2 : 17 * Nn ^ 2 ≤ T ^ 3 := by
    have hT3 : (Nn + 5) ^ 3 ≤ T ^ 3 := pow_le_pow_left₀ (by linarith) hT 3
    have hN3 : 2 * Nn ^ 2 ≤ Nn ^ 3 := by
      calc 2 * Nn ^ 2 ≤ Nn * Nn ^ 2 := mul_le_mul_of_nonneg_right hN (sq_nonneg Nn)
        _ = Nn ^ 3 := by ring
    linarith [sq_nonneg Nn, show (Nn + 5) ^ 3 = Nn ^ 3 + 15 * Nn ^ 2 + 75 * Nn + 125 by ring]
  have h3 : Q ^ 2 ≤ Q ^ 3 := by
    calc Q ^ 2 = 1 * Q ^ 2 := (one_mul _).symm
      _ ≤ Q * Q ^ 2 := mul_le_mul_of_nonneg_right hQ (sq_nonneg Q)
      _ = Q ^ 3 := by ring
  have h4 : 16 * Q ^ 2 * (17 * Nn ^ 2) ≤ 16 * Q ^ 3 * T ^ 3 := by
    have := mul_le_mul h3 h2 (by positivity) (by positivity)
    linarith
  have hposQN : 0 ≤ Q ^ 2 * Nn ^ 2 := by positivity
  linarith [hposQN, show (2 * Q * T) ^ 3 = 8 * (Q ^ 3 * T ^ 3) by ring,
    show 16 * Q ^ 3 * T ^ 3 = 16 * (Q ^ 3 * T ^ 3) by ring,
    show 16 * Q ^ 2 * (17 * Nn ^ 2) = 272 * (Q ^ 2 * Nn ^ 2) by ring,
    show 160 * Q ^ 2 * Nn ^ 2 = 160 * (Q ^ 2 * Nn ^ 2) by ring]

theorem gapNum_real (Q Nn T P Q0 x : ℝ) (hQ : 1 ≤ Q) (hN : 2 ≤ Nn) (hT : Nn + 5 ≤ T)
    (hP : P ≤ Nn) (hQ00 : 0 ≤ Q0) (hQ0 : Q0 ≤ Q)
    (hx : 2 * (Nn + 2 * Q * T) ^ 3 + T + 3 < x) :
    max (2 + max (3 * Nn / 2) (1 + Nn * P * Q))
      (max (16 * Nn * Q0 + 8 * Real.sqrt (2 * Q0) + 2)
        (8 * Real.sqrt (2 * Q0) * (4 * max (2 * Nn * Q0) (2 * (Q - 1) * Nn ^ 2) + 1))) < x := by
  have key := gapNum_key Q Nn T hQ hN hT
  have hQp : 0 ≤ Q := by linarith
  have hNp : 0 ≤ Nn := by linarith
  have hTp : 0 ≤ T := by linarith
  set S := Nn + 2 * Q * T with hS
  have hSN : Nn ≤ S := by rw [hS]; linarith [show 0 ≤ 2 * Q * T by positivity]
  have hS3 : Nn ≤ 2 * S ^ 3 := by
    have hS0 : 0 ≤ S := le_trans hNp hSN
    have hS2 : 1 ≤ S ^ 2 := one_le_pow₀ (by linarith)
    calc Nn ≤ S * 1 := by linarith
      _ ≤ S * S ^ 2 := mul_le_mul_of_nonneg_left hS2 hS0
      _ = S ^ 3 := by ring
      _ ≤ 2 * S ^ 3 := by linarith [pow_nonneg hS0 3]
  have hs0 : 0 ≤ Real.sqrt (2 * Q0) := Real.sqrt_nonneg _
  have hs : Real.sqrt (2 * Q0) ≤ 2 * Q := Real.sqrt_le_iff.mpr ⟨by linarith, by
    calc 2 * Q0 ≤ 2 * Q := by linarith
      _ ≤ (2 * Q) * (2 * Q) := le_mul_of_one_le_right (by positivity) (by linarith)
      _ = (2 * Q) ^ 2 := (sq _).symm⟩
  have hm0 : 0 ≤ max (2 * Nn * Q0) (2 * (Q - 1) * Nn ^ 2) :=
    le_max_of_le_left (by positivity)
  have hm : max (2 * Nn * Q0) (2 * (Q - 1) * Nn ^ 2) ≤ 2 * Q * Nn ^ 2 :=
    max_le (by
      calc 2 * Nn * Q0 ≤ 2 * Nn * Q := mul_le_mul_of_nonneg_left hQ0 (by positivity)
        _ = 2 * Q * (Nn * 1) := by ring
        _ ≤ 2 * Q * (Nn * Nn) := mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left (by linarith) hNp) (by positivity)
        _ = 2 * Q * Nn ^ 2 := by ring)
      (by linarith [sq_nonneg Nn, show 2 * (Q - 1) * Nn ^ 2 = 2 * Q * Nn ^ 2 - 2 * Nn ^ 2 by ring])
  have hN2 : 4 ≤ Nn ^ 2 := by
    have h22 := pow_le_pow_left₀ (by norm_num) hN 2
    norm_num at h22; exact h22
  have hQN : 4 * Q ≤ Q ^ 2 * Nn ^ 2 := by
    calc 4 * Q = 4 * (1 * Q) := by ring
      _ ≤ 4 * (Q * Q) := mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hQ hQp) (by norm_num)
      _ = Q ^ 2 * 4 := by ring
      _ ≤ Q ^ 2 * Nn ^ 2 := mul_le_mul_of_nonneg_left hN2 (sq_nonneg Q)
  have hd : 8 * Real.sqrt (2 * Q0) * (4 * max (2 * Nn * Q0) (2 * (Q - 1) * Nn ^ 2) + 1)
      ≤ 8 * (2 * Q) * (4 * (2 * Q * Nn ^ 2) + 1) := by
    apply mul_le_mul (by linarith) (by linarith) (by positivity) (by positivity)
  have hNQ : Nn * Q0 ≤ Nn * Q := mul_le_mul_of_nonneg_left hQ0 hNp
  have hqn : 2 ≤ Q * Nn := by
    calc (2 : ℝ) = 1 * 2 := by norm_num
      _ ≤ Q * Nn := mul_le_mul hQ hN (by norm_num) hQp
  have hQ2N2 : 2 * (Nn * Q) ≤ Q ^ 2 * Nn ^ 2 := by
    calc 2 * (Nn * Q) ≤ (Q * Nn) * (Nn * Q) := mul_le_mul_of_nonneg_right hqn (by positivity)
      _ = Q ^ 2 * Nn ^ 2 := by ring
  have hPQ : P * Q ≤ Nn * Q := mul_le_mul_of_nonneg_right hP hQp
  have hNPQ1 : Nn * (P * Q) ≤ Nn * (Nn * Q) := mul_le_mul_of_nonneg_left hPQ hNp
  have hQQ : Q ≤ Q ^ 2 := by
    calc Q = 1 * Q := (one_mul _).symm
      _ ≤ Q * Q := mul_le_mul_of_nonneg_right hQ hQp
      _ = Q ^ 2 := (sq Q).symm
  have hNPQ2 : Nn ^ 2 * Q ≤ Nn ^ 2 * Q ^ 2 := mul_le_mul_of_nonneg_left hQQ (sq_nonneg Nn)
  have hQN0 : 0 ≤ Q ^ 2 * Nn ^ 2 := by positivity
  refine max_lt ?_ (max_lt ?_ ?_)
  · have : max (3 * Nn / 2) (1 + Nn * P * Q) < x - 2 :=
      max_lt (by linarith) (by linarith)
    linarith
  · linarith
  · linarith

theorem gapNum : GapNumStatement := by
  intro n q t x hn hq hqn ht hx
  unfold hNum
  have hx' : 2 * ((n : ℝ) + 2 * (q : ℝ) * (t : ℝ)) ^ 3 + (t : ℝ) + 3 < x := by
    push_cast at hx; exact hx
  exact gapNum_real (q : ℝ) (n : ℝ) (t : ℝ) ((n - q : ℕ) : ℝ) ((min (n - q) q : ℕ) : ℝ) x
    (by exact_mod_cast hq) (by exact_mod_cast hn) (by exact_mod_cast ht)
    (by exact_mod_cast Nat.sub_le n q) (Nat.cast_nonneg _)
    (by exact_mod_cast min_le_right _ _) hx'

end ReciprocityTheory.ChartRestriction.DS.Lap
