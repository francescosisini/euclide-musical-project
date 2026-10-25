\version "2.22.1"
\include "predefined-guitar-fretboards.ly"

\header {
  title = "L'Accademia"
  subtitle = "Euclide"
  composer = "Franceso Sisini"
  %arranger = "Valentina Sisini, Matteo Braiato"
  tagline = \markup {
    
    \center-column {
      \epsfile #Y #15 # "edizionitradizionali.eps"
      \tiny \line {
      "© 2026 Edizioni Tradizionali — "
      "CC BY 4.0 — "
      \with-url #"https://creativecommons.org/licenses/by/4.0/" "creativecommons.org/licenses/by/4.0"
      }
      \small \line { \with-url #"https://github.com/francescosisini/Cnot-Franchise" "https://github.com/francescosisini/Cnot-Franchise" }
      \tiny \line {
      "Testo rifinito con ChatGPT, audio Suno, trascrizione e arrangiamento degli autori."
    }
      \small \italic "Music engraving by LilyPond"
      
    }
    
  }
}

license = \markup {
  \center-column {
    \small "© 2026 Edizioni Tradizionali — Creative Commons Attribution 4.0 International (CC BY 4.0)"
    \small \with-url #"https://creativecommons.org/licenses/by/4.0/"
           "https://creativecommons.org/licenses/by/4.0/"
  }
}

\paper {
  tagline = \markup {
    \tiny \line {
      "© 2025 Edizioni Tradizionali — "
      "CC BY 4.0 — "
      \with-url #"https://creativecommons.org/licenses/by/4.0/" "creativecommons.org/licenses/by/4.0"
      " — Testo rifinito con ChatGPT, audio Suno, trascrizione e arrangiamento degli autori."
    }
  }
}

\paper {
  oddHeaderMarkup = \markup {
    \fill-line { \null \epsfile #Y #8 #"qrcode.eps" }  % header dx
  }
}
\paper {
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:factor (/ staff-height pt 23)
    ))
}

global = { \key c \minor \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
 % primo 
  En tòis or -- tho -- go -- NIois tri -- GO -- nois
  to a -- PÒ tes ten or -- TÈN GO -- ni -- an
  hy -- po -- TEI -- nu -- sas PLEU -- ras

  te -- TRÀ -- go -- non

%secondo

  I -- son È -- sti tòis a -- PÒ ton ten or -- TÈN GO -- ni -- an
  pe -- ri -- e -- KHU -- son PLEU -- ron

  te -- tra -- GÒ -- nois
  
  
  Un giovane matetes ha dubitato della mia dimostrazione.

  Egli stesso l’ha prodotta
  con la riga e tavoletta,
  ma vederla non gli basta
  questo dice la sua testa


  Dice: non è dimostrata
  su una base stabilita,
  di confini rigorosi
  e di assiomi sottointesi,


  dubitando di Talete
  e di Ippocrate, Euclìde
  fa tremare una struttura
  che da secoli perdura.


  Lui ha detto nell’àgora,
  non è dimostrato
  il teorema di Pità-gora.

  Forse io sono troppo vecchio per capire…
  forse l’accademia non è abbastanza.
  Non può restare.
  Lo lascerò partire.

}
melodiaVoce = \relative g {
  \global
  r2 r8 g8 c8 d8 | 
  ees16 ees ees8 ees16 d c8 r8 c8 d8 ees16 f|
  f8 f16 ees f16 ees d8 r8 g16 f  ees16  ees16 d16 ees16~ | 
  ees16  c8 r4 r4 r8 ees16 ees16 c16|
  c8 r2 g16 c8 d8   ees16| 
  f8 g8 bes8 bes16 aes8 g8 bes16 aes16 g16 | 
  r4 f8  r8 f16 ees f16 ees d8  g8 f | 
  r4  r4 r4 r16  ees16  d16 d16   |
  c8

  

  
  
}
bassoGuida = \fixed c {
  \global
  \clef bass

  c,4-> g,4-. c4-- g,8 b,8 |
  c,4-> g,4-. c4-- es,8 e,8 |
  f,4-> c4-. f4-- c8 es8 |
  aes,4-> ees4-. aes4-- ees8 c8 |
  
  c,4-> g,4-. c4-- g,8 b,8 |
  c,4-> g,4-. c4-- es,8 e,8 |
  f,4-> c4-. f4-- c8 es8 |
  aes,4-> ees4-. aes4-- ees8 c8 |
  
  c,4-> g,4-. c4-- g,8 b,8 |
  c,4-> g,4-. c4-- es,8 e,8 |
  f,4-> c4-. f4-- c8 es8 |
  aes,4-> ees4-. aes4-- ees8 c8 |
  
  
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
  c1:m c1:m  f1:m aes1
  c1:m c1:m  f1:m aes1
  c1:m c1:m  f1:m aes1
 
  
  %c2 f2 c2 a2:m c2 a2:m
  %d1:m f1 c2 a2:m f1
  %g1 c1 c2 a2:m f2 c2 c2 a2:m
  %f2 c2 c1 c1 e1:m a1:m a1:m f2 g2
  %a2:m g2 f2 c2 a2:m g2 f2 c2 c1 c2 d2:m
  %c2 f2 c1 c2 a2:m f1 g1 c1
}

arpeggioChitarra = \relative c' {
  \global
  % 8 misure (G, G, D/A, D, Em9, Em9, C9, G) – arpeggio a ottavi
  c,8 g' c d e2 | % C
  c,8 g' c d e2 | % C
  b,8 e b ' d e 2 | %Em
  c,8 g' c d e2 | % C
  a,,8 e' a c e2 | % Am
  g,,8 e' a c e2 | % Am/G
  b,8 g b c' b2 | % G
  <c, e g c>2 <d a' f' >2   | % c - Dm
  <c e g c>2 <e a c >2   | % c - F
  <c e g c>2 <e a c >2   | % c - am
  <c e g c>2 <e a c >2   | % c - am
  <d' a f c>1   | % Dm
  <c a f c>1   | % Dm
  <c, e g c>2 <a e' c' >2   | % c - Am
  <f' a c >1   | % F
  <e g  b>1 | % G
  %<c e g c>2 <c e g c>2   | % c 
  <c e g c>2 <c e g c>2   | % c 
  <c e g c>2 <e a c >2   | % c - am
  <e a c >2  <c e g c>2   | % F - C
  <c e g c>2 <e a c >2   | % c - am
  <e a c >2  <c e g c>2   | % F - C
  <c e g c>2 <c e g c>2   | % c 
  <b e g >2 <b e g>2   | % Em
  <e a c >1   | %  am
  <e a c >1   | %  am
  <f a c >2  <b d g >2   | % F - G
  <e, a c >2 <b e g >2   | % c - am
  <f' a c >2  <c e g c>2   | % F - C
  <e a c >2 <b e g >2   | % c - am
  <f' a c >2  <c e g c>2   | % F - C
  <c e g c>2 <e g b>2   | % c - Em
  <c e g c>2 <e a c >2   | % c - F
  <c e g c>2 <e a c >2   | % c - F
  <c e g c>2 <c e g c>2   | % c 
  <e, a c >2 <b e g >2   | % c - am
  <f' a c >1   | % F 
  <b d g >1   | %  G
  <c e g c>1  | % c 

}









\score {
  <<
    
    \new ChordNames \with {
  midiInstrument = "acoustic grand"
  midiMinimumVolume = #0.0
  midiMaximumVolume = #0.0
} { \accordi }

    
    % --- Nomi degli accordi ---
   % \new ChordNames  {\set chordChanges = ##f  \accordi }

    % --- (facoltativo) Diagrammi chitarra allineati agli accordi ---
    % \new FretBoards { \accordi }

  
\new Staff \with {
  instrumentName = "Voce"
  midiInstrument = "voice oohs"
  \override DynamicTextSpanner.staff-padding = #3
} <<
  \new Voice = "voce" {
    \dynamicUp
    \set Staff.midiMinimumVolume = #0.7
    \set Staff.midiMaximumVolume = #1.0
    \melodiaVoce
  }
>>

 % --- LYRICS legate alla Voice "voce" ---
    \new Lyrics \lyricsto "voce" { \testo }

\new Staff \with {
  instrumentName = "Basso"
  shortInstrumentName = "Bs."
  midiInstrument = "electric bass (pick)"
} {
  \bassoGuida
}

    % --- Staff VOCE ---
   % \new Staff <<
    %  \new Voice = "voce" {
    %    \mark \markup \box "Sospirata"

     %   \melodiaVoce
    %  }
   % >>

   

    % --- Staff CHITARRA (standard) con arpeggio ---
   % \new Staff \with {
   %   instrumentName = "Chitarra"
   %   midiInstrument = "acoustic guitar (nylon)"
   % } {
    % \clef "treble_8"
    %  \arpeggioChitarra
   % }

    % --- Tabulatura CHITARRA (stesso arpeggio) ---
    %\new TabStaff \with {
     % stringTunings = #guitar-tuning
    %} {
     % \arpeggioChitarra
    %}
  >>
  \layout { }
  \midi { \tempo 4 = 60 }
}
