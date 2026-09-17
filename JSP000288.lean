import ErdosProblems.Erdos346

/-!
Dedicated JSP-000288 interface to the pinned existing proof.
No mathematical or first-formalization priority is claimed here.
-/

namespace JSP000288

/-- Explicit sequence satisfying the deletion properties with nonconvergent ratios. -/
theorem counterexample :
    ∃ a : ℕ → ℕ, StrictMono a ∧ (∀ n, 0 < a n) ∧
      (∀ D : Set ℕ, D.Finite →
        ∃ H, ∀ n, H ≤ n → n ∈ Erdos346.subsetSums a Dᶜ) ∧
      (∀ D : Set ℕ, D.Infinite →
        ∀ H, ∃ n, H ≤ n ∧ n ∉ Erdos346.subsetSums a Dᶜ) ∧
      (∀ n, (6 : ℝ) / 5 ≤ (a (n + 1) : ℝ) / a n) ∧
      (∃ N : ℕ → ℕ, StrictMono N ∧
        Filter.Tendsto (fun j => (a (N j) : ℝ) / a (N j - 1)) Filter.atTop
          (nhds Real.goldenRatio) ∧
        Filter.Tendsto (fun j => (a (N j + 1) : ℝ) / a (N j)) Filter.atTop
          (nhds (Real.goldenRatio + (1 : ℝ) / 4))) ∧
      ¬ ∃ x : ℝ, Filter.Tendsto (fun n => (a (n + 1) : ℝ) / a n)
        Filter.atTop (nhds x) :=
  Erdos346.erdos_346_counterexample

/-- Exact negation of the proposed golden-ratio convergence implication. -/
theorem solution :
    ¬ ∀ a : ℕ → ℕ, StrictMono a → (∀ n, 0 < a n) →
      (∀ D : Set ℕ, D.Finite →
        ∃ H, ∀ n, H ≤ n → n ∈ Erdos346.subsetSums a Dᶜ) →
      (∀ D : Set ℕ, D.Infinite →
        ∀ H, ∃ n, H ≤ n ∧ n ∉ Erdos346.subsetSums a Dᶜ) →
      (∃ ε : ℝ, 0 < ε ∧ ∀ n, 1 + ε ≤ (a (n + 1) : ℝ) / a n) →
      Filter.Tendsto (fun n => (a (n + 1) : ℝ) / a n) Filter.atTop
        (nhds Real.goldenRatio) :=
  Erdos346.not_erdos_346

end JSP000288
