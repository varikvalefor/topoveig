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

module VA {a b : Agda.Primitive.Level}
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
\end{code}
