\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{xcolor}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{∃}{\ensuremath{\mathnormal\exists}}
\newunicodechar{∄}{\ensuremath{\mathnormal\nexists}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{∨}{\ensuremath{\mathnormal\vee}}
\newunicodechar{ℕ}{\ensuremath{\mathnormal{\mathbb{N}}}}
\newunicodechar{∈}{\ensuremath{\mathnormal\in}}
\newunicodechar{∉}{\ensuremath{\mathnormal\notin}}
\newunicodechar{∋}{\ensuremath{\mathnormal\ni}}
\newunicodechar{⊆}{\ensuremath{\mathnormal\subseteq}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{≢}{\ensuremath{\mathnormal\nequiv}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{⟨}{\ensuremath{\mathnormal\langle}}
\newunicodechar{⟩}{\ensuremath{\mathnormal\rangle}}
\newunicodechar{⟪}{\ensuremath{\mathnormal{\langle\hspace{-0.2em}\langle}}}
\newunicodechar{⟫}{\ensuremath{\mathnormal{\rangle\hspace{-0.2em}\rangle}}}
\newunicodechar{∎}{\ensuremath{\mathnormal\blacksquare}}
\newunicodechar{∶}{\ensuremath{\mathnormal\colon\!\!}}
\newunicodechar{⊹}{\ensuremath{\mathnormal\dag}}
\newunicodechar{¯}{\ensuremath{\mathnormal{^-}}}
\newunicodechar{◃}{\ensuremath{\mathnormal\triangleleft}}
\newunicodechar{▹}{\ensuremath{\mathnormal\triangleright}}
\newunicodechar{𝕗}{\ensuremath{\mathnormal{\mathbb{f}}}}
\newunicodechar{ℙ}{\ensuremath{\mathnormal{\mathbb{P}}}}
\newunicodechar{𝔽}{\ensuremath{\mathnormal{\mathbb{F}}}}
\newunicodechar{𝕊}{\ensuremath{\mathnormal{\mathbb{S}}}}
\newunicodechar{𝕄}{\ensuremath{\mathnormal{\mathbb{M}}}}
\newunicodechar{𝕃}{\ensuremath{\mathnormal{\mathbb{L}}}}
\newunicodechar{ℚ}{\ensuremath{\mathnormal{\mathbb{Q}}}}
\newunicodechar{ℝ}{\ensuremath{\mathnormal{\mathbb{R}}}}
\newunicodechar{ℤ}{\ensuremath{\mathnormal{\mathbb{Z}}}}
\newunicodechar{𝔻}{\ensuremath{\mathnormal{\mathbb{D}}}}
\newunicodechar{ℂ}{\ensuremath{\mathnormal{\mathbb{C}}}}
\newunicodechar{𝔹}{\ensuremath{\mathnormal{\mathbb{B}}}}
\newunicodechar{ν}{\ensuremath{\mathnormal{\nu}}}
\newunicodechar{μ}{\ensuremath{\mathnormal{\mu}}}
\newunicodechar{◆}{\ensuremath{\mathnormal\blackdiamond}}
\newunicodechar{∙}{\ensuremath{\mathnormal\bullet}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\AgdaFontStyle{b}}}}
\newunicodechar{ˢ}{\ensuremath{\mathnormal{^\AgdaFontStyle{s}}}}
\newunicodechar{⁻}{\ensuremath{\mathnormal{^-}}}
\newunicodechar{≥}{\ensuremath{\mathnormal{\geq}}}
\newunicodechar{≯}{\ensuremath{\mathnormal{\ngtr}}}
\newunicodechar{ϕ}{\ensuremath{\mathnormal{\phi}}}
\newunicodechar{χ}{\ensuremath{\mathnormal{\chi}}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\wedge}}}
\newunicodechar{∅}{\ensuremath{\mathnormal{\emptyset}}}
\newunicodechar{∣}{\ensuremath{\mathnormal{|}}}
\newunicodechar{⁇}{\ensuremath{\mathnormal{\mathrm{?\!?}}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}
\newunicodechar{ℓ}{\ensuremath{\mathnormal{\ell}}}
\newunicodechar{σ}{\ensuremath{\mathnormal{\sigma}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}
\newunicodechar{ₘ}{\ensuremath{\mathnormal{_\mathsf{m}}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_\mathsf{s}}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{⊥}{\ensuremath{\mathnormal{\bot}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}
\newunicodechar{⍉}{\ensuremath{\mathnormal{∘\hspace{-0.455em}\backslash}}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}
\newunicodechar{ᵢ}{\ensuremath{\mathnormal{_i}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₒ}{\ensuremath{\mathnormal{_o}}}
\newunicodechar{ₚ}{\ensuremath{\mathnormal{_p}}}
\newunicodechar{ₙ}{\ensuremath{\mathnormal{_n}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{′}{\ensuremath{\mathnormal{'}}}
\newunicodechar{⊎}{\ensuremath{\mathnormal{\uplus}}}
\newunicodechar{≗}{\ensuremath{\mathnormal{\circeq}}}
\newunicodechar{⇒}{\ensuremath{\mathnormal{\Rightarrow}}}
\newunicodechar{⇐}{\ensuremath{\mathnormal{\Leftarrow}}}
\newunicodechar{≈}{\ensuremath{\mathnormal{\approx}}}
\newunicodechar{≉}{\ensuremath{\mathnormal{\napprox}}}
\newunicodechar{⌊}{\ensuremath{\mathnormal{\lfloor}}}
\newunicodechar{⊓}{\ensuremath{\mathnormal{\sqcap}}}
\newunicodechar{⊔}{\ensuremath{\mathnormal{\sqcup}}}
\newunicodechar{⍨}{\raisebox{-0.25ex}{$\ddot\sim$}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\IC\AgdaInductiveConstructor
\newcommand\Mod\AgdaModule
\newcommand\Op[1]{\AgdaOperator{#1}}
\newcommand\OpF[1]{\Op{\F{#1}}}

\newcommand\sds{\spacefactor\sfcode`.\ \space}

\title{la'o zoi.\ \texttt{Vagueness}\ .zoi.}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le te kajde}
\paragraph{la .lojban.}
ni'o la .varik.\ cu kajde fi zo'e joi le su'u su'o da zo'u vo'a na'e skicu da bau la .lojban.\ ja le glibau ki'u zo'e joi lo su'u vo'a na jinvi lo du'u lo nu skicu da bau la .lojban. ja le glibau cu jai filri'a lo nu mutce lo ka ce'u jimpe fi da\sds  .i ji'a la .varik.\ cu jinvi le du'u le gerna be la'oi .Agda.\ cu zmadu fi le ka ce'u mapti\sds  .i ji'a su'u da zo'u la .varik.\ cu jinvi le du'u lo da'i velski be tu'a da cu velski zo'e ja lo se ctaipe be da je cu ronsa lo me'oi .Agda.\ velcki be da\\
.i ku'i la .varik.\ cu co'e ja djica curmi lo nu retsku\sds  .i la .varik.\ na djuno le du'u lo nu retsku na filri'a lo nu facki fi lo velski je jai filri'a

\paragraph{English}
VARIK cautions.  Some thing $t$ exists such that (VARIK does not explain (via English or Lojban) $t$, and the reason for not explaining is relevant to that (VARIK does not opine that explaining (via English or Lojban) $t$ facilitates being extreme in understanding about $t$)).  Additionally, VARIK opines that the syntax of Agda exceeds in being appropriate.  Additionally, some thing $t$ exists such that VARIK opines that a description of $t$ is a description of the type/whatever of $t$ and is redundant with the Agda definition of $t$.\\
But VARIK welcomes questions.  VARIK does not know that questions do not facilitate discovering about descriptions which facilitate.

\section{le vrici / The Miscellaneous}

\begin{code}
{-# OPTIONS --cubical-compatible #-}
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
    _on_;
    _∘_;
    _$_;
    id
  )
open import Data.Sum
  using (
    _⊎_
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
open import Data.Rational
  as ℚ
  using (
    ℚ
  )
open import Relation.Binary
  using (
    IsEquivalence
  )
open import Relation.Nullary
  using (
    ¬_
  )
open import Relation.Binary.PropositionalEquality
  as ≡
  using (
    _≡_
  )
\end{code}

\section{le me'oi .interval.\ se ctaipe / The Interval Type}

\begin{code}
record Interval a : Set (Agda.Primitive.lsuc a) where
  field
    I : Set a
    i0 : I
    i1 : I
    _≈_ : I → I → Set a
    Eqv : IsEquivalence _≈_
    nd : ¬_ $ i0 ≈ i1
\end{code}

\section{le mutce be le ka ce'u sucta / The Thing which is Very Abstract}

\begin{code}
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

  FricaC : {t : A} → (I → B t) → Set (b ⊔ c)
  FricaC i = (j k : I) → _≈_ _ (i j) (i k) → Interval._≈_ Iv j k

  J : {t : A} → (_ _ : B t) → Set (b ⊔ c)
  J {t} x z = (Σ
                (I → B t)
                (λ f → _×_
                  (FricaC f)
                  (_≈_ t x (f i0) × _≈_ t z (f i1))))

  Vg : A → Set (b ⊔ c)
  Vg t = (x z : B t) → J x z

  Am : A → Set (b ⊔ c)
  Am t = ∃ $ ¬_ ∘ uncurry (J {t})
\end{code}

\section{le zmadu be fi le ka la .varik.\ cu jinvi lo du'u frili fa lo nu pilno ce'u / The Thing which (as-opined-by VARIK) Exceeds in Being Easy and in Being Usable}

\begin{code}
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

  FricaC : (I → B) → Set (b ⊔ c)
  FricaC i = (j k : I) → i j ≈ i k → Interval._≈_ Iv j k

  J : A → A → Set (b ⊔ c)
  J x z = Σ (I → B) $ λ i → FricaC i × (f x ≈ i i0) × (f z ≈ i i1)

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
  Am→¬Sp ((x , z) , N) sp = N ({!!} , ? , ?)

  Am!→Am : Am! → Am
  Am!→Am = Σ.proj₁

VA→VA2 : ∀ {a b c} → {A : Set a} → {B : A → Set b}
       → (x : A)
       → (Iv : Interval c)
       → (_≈_ : (x : A) → (_ _ : B x) → Set b)
       → VA.Vg A B Iv _≈_ x
       → VA2.Vg (B x) (B x) id Iv (_≈_ _)
VA→VA2 _ _ _ = id
\end{code}

\section{le mupli / Examples}

\begin{code}
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

    _≈_ : Lijda → Lijda → Set
    _≈_ = {!!}

    Iv : Interval zero
    Iv = record {
      I = ℚ;
      i0 = ℚ.0ℚ;
      i1 = ℚ.1ℚ;
      _≈_ = _≡_;
      Eqv = ≡.isEquivalence;
      nd = λ ()
      }

    -- ni'o la .varik. cu morji le du'u vo'a
    -- retsku le na'e tarmi preti se pi'o le tavla
    -- kumfa pe'a
    -- .i na birti fa la .varik.
    preti : let S = Σ Lijda IsSatanism in
            let Px = λ f → f S _ id Iv $ _≈_ on proj₁ in
            Px VA2.Vg ⊎ Px VA2.Am
    preti = {!!}

  module Chomsky where
    BanguKlesi : Set
    BanguKlesi = {!!}

    Idiolect : BanguKlesi → Set
    Idiolect = {!!}

    Iv : Interval zero
    Iv = {!!}

    _≈_ : (t : _) → (_ _ : Idiolect t) → Set
    _≈_ = {!!}

    _ : let Px = λ f → (t : _) → f BanguKlesi Idiolect Iv _≈_ t in
        Px VA.Vg ⊎ Px VA.Am
    _ = {!!}
\end{code}
\end{document}
