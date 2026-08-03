\begin{code}
{-# OPTIONS --cubical #-}
{-# OPTIONS --safe #-}

module Vagueness where

open import Level
  using (
    zero;
    _⊔_
  )
open import Function
  using (
    typeOf;
    _∘_;
    _$_;
    id
  )
open import Data.Product
  using (
    uncurry;
    proj₁;
    _×_;
    _,_;
    Σ;
    ∃
  )
open import Relation.Binary
  using (
    IsEquivalence
  )
open import Relation.Nullary
  using (
    ¬_
  )

record Interval a : Set (Agda.Primitive.lsuc a) where
  field
    I : Set a
    i0 : I
    i1 : I
    _≈_ : I → I → Set a
    Eqv : IsEquivalence _≈_
    nd : ¬_ $ i0 ≈ i1

module VA {a b c}
          (A : Set a)
          (B : A → Set b)
          (Iv : Interval c)
          (_≈_ : (x : A) → (_ _ : B x) → Set b)
  where
  open Interval Iv
    using (
      i0;
      i1;
      I
    )

  Vg : A → Set (b ⊔ c)
  Vg t = (x z : B t)
       → (Σ
           (I → B t)
           (λ f → _≈_ t x (f i0) × _≈_ t z (f i1)))

  Am : A → Set (b ⊔ c)
  Am = ¬_ ∘ Vg

module VA2 {a b c}
           (A : Set a)
           (B : Set b)
           (f : A → B)
           (Iv : Interval c)
           (_≈_ : B → B → Set b)
  where
  open Interval Iv
    using (
      i0;
      i1;
      I
    )

  J : A → A → Set (b ⊔ c)
  J x z = Σ (I → B) $ λ i → (f x ≈ i i0) × (f z ≈ i i1)

  Vg : Set (a ⊔ b ⊔ c)
  Vg = (x z : A) → J x z

  Am : typeOf Vg
  Am = ∃ $ ¬_ ∘ uncurry J

  Am→¬Vg : Am → ¬ Vg
  Am→¬Vg ((x , z) , N) vg = N $ vg x z

  Sp : Set (a ⊔ b)
  Sp = (x z : A) → f x ≈ f z

  Vg! : Set (a ⊔ b ⊔ c)
  Vg! = Vg × ¬ Sp

  Am! : typeOf Am
  Am! = Am × ¬ Sp

  Vg!→Vg : Vg! → Vg
  Vg!→Vg = Σ.proj₁

  Am→¬Sp : Am → ¬ Sp
  Am→¬Sp ((x , z) , N) sp = N $ (λ _ → f x) , sp x x , sp z x

  Am!→Am : Am! → Am
  Am!→Am = Σ.proj₁

VA→VA2 : ∀ {a b c} → {A : Set a} → {B : A → Set b}
       → (x : A)
       → (Iv : Interval c)
       → (_≈_ : (x : A) → (_ _ : B x) → Set b)
       → VA.Vg A B Iv _≈_ x
       → (x1 x2 : B x)
       → VA2.Vg (B x) (B x) id Iv (_≈_ _)
VA→VA2 = λ _ _ _ x₁ _ _ → x₁

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

    Ix : Interval zero
    Ix = {!!}

    Vague : Term → Set
    Vague = VA.Vg Term MeaningOf Ix Dun

    Ambiguous : Term → Set
    Ambiguous = VA.Am Term MeaningOf Ix Dun

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
    preti_se_ctaipe = VA2.Vg (Σ Lijda IsSatanism) SatanicProp (sp ∘ proj₁) {!!} sp≈
\end{code}
