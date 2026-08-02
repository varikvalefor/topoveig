\begin{code}
{-# OPTIONS --cubical #-}
{-# OPTIONS --safe #-}

module Vagueness where

open import Function
open import Data.Product
open import Relation.Nullary
open import Relation.Binary.PropositionalEquality

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
  where
  Vg : A → Set b
  Vg t = (x z : B t) → Σ (I → B t) $ λ f → (f i0 ≡ x) × (f i1 ≡ z)

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

    Vague : Term → Set
    Vague = VA.Vg Term MeaningOf

    Ambiguous : Term → Set
    Ambiguous = VA.Am Term MeaningOf
\end{code}
