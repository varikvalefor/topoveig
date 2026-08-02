\begin{code}
{-# OPTIONS --cubical #-}
{-# OPTIONS --safe #-}

module Vagueness where

open import Function
open import Data.Product
open import Relation.Nullary

ℝ : Set
ℝ = {!!}

_≤_ : ℝ → ℝ → Set
_≤_ = {!!}

0r 1r : ℝ
0r = {!!}
1r = {!!}

I : Set
I = Σ ℝ $ λ x → (x ≤ 1r) × (0r ≤ x)

i0 : I
i0 = 0r , {!!}

i1 : I
i1 = 1r , {!!}

module VA {a b}
          (A : Set a)
          (B : A → Set b)
          (_≈_ : (x : A) → (_ _ : B x) → Set b)
  where
  Vg : A → Set b
  Vg t = (x z : B t)
       → (Σ
           (I → B t)
           (λ f → _≈_ t x (f i0) × _≈_ t z (f i1)))

  Am : A → Set b
  Am = ¬_ ∘ Vg

module VA2 {a b}
           (A : Set a)
           (B : Set b)
           (f : A → B)
           (_≈_ : B → B → Set b)
  where
  Vg : Set (a Agda.Primitive.⊔ b)
  Vg = (x z : A)
     → Σ (I → B) $ λ i → (f x ≈ i i0) × (f z ≈ i i1)

  Am : typeOf Vg
  Am = ¬ Vg

_ : ∀ {a b} → {A : Set a} → {B : A → Set b}
  → (x : A)
  → (_≈_ : (x : A) → (_ _ : B x) → Set b)
  → VA.Vg A B _≈_ x
  → (x1 x2 : B x)
  → VA2.Vg (B x) (B x) id (_≈_ _)
_ = λ _ _ x₁ _ _ → x₁

module Mupli where
  module Bangu where
    Term : Set
    Term = {!!}

    Meaning : Set
    Meaning = {!!}

    IsMeaning : Term → Meaning → Set
    IsMeaning = {!!}

    MeaningOf : Term → Set
    MeaningOf = Σ Meaning ∘ IsMeaning

    Dun : (x : Term) → (_ _ : MeaningOf x) → Set
    Dun = {!!}

    Vague : Term → Set
    Vague = VA.Vg Term MeaningOf Dun

    Ambiguous : Term → Set
    Ambiguous = VA.Am Term MeaningOf Dun

  module Lijda where
    Lijda : Set
    Lijda = {!!}

    IsSatanism : Lijda → Set
    IsSatanism = {!!}

    SatanicProp : Set
    SatanicProp = {!!}

    sp : Lijda → SatanicProp
    sp = {!!}

    sp≈ : (_ _ : SatanicProp) → Set
    sp≈ = {!!}

    -- ni'o la .varik. cu morji le du'u vo'a
    -- retsku le na'e tarmi preti se pi'o le tavla
    -- kumfa pe'a
    -- .i na birti fa la .varik.
    preti_se_ctaipe : Set
    preti_se_ctaipe = VA2.Vg (Σ Lijda IsSatanism) SatanicProp (sp ∘ proj₁) sp≈
\end{code}
