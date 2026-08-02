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

Term : Set
Term = {!!}

Meaning : Set
Meaning = {!!}

IsMeaning : Term → Meaning → Set
IsMeaning = {!!}

MeaningOf : Term → Set
MeaningOf = Σ Meaning ∘ IsMeaning

Vague : Term → Set
Vague t = (x z : MeaningOf t)
        → Σ (I → MeaningOf t) $ λ f → (f i0 ≡ x) × (f i1 ≡ z)

Ambiguous : Term → Set
Ambiguous = ¬_ ∘ Vague
\end{code}
