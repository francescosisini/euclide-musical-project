\version "2.22.1"
\include "predefined-guitar-fretboards.ly"

\header {
  title = "La via regia"
  subtitle = "Euclide"
  composer = "Franceso Sisini"
  arranger = "Valentina Sisini, Matteo Braiato"
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

global = { \key c \major \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
  Si gnore To lo meo
  io vi sono gra -- to
  per a  ver  mi
 qui o -- spi -- ta -- to
 Tre -- di -- ci vo -- lu -- mi 
 Di teore -- mi e assio -- mi
 Ho g -- ià comple --  ta -- to
 Ho g -- ià dimo --  stra -- to
 Ma quel che mi chie -- dete
 Non lo po -- sso fa -- re per -- ché
 Ba -- si -- li -- kè ho -- dos
 non e -- sis -- te e --pi
 geo --  me -- trian
 
 Io ho crea -- to la cit -- tà
 di A -- les -- san -- dro
 Ho fon -- da -- to la struttura
 di A -- les -- san -- dria
 
 Io ti ho accolto in bib -- lioteca
 Hai stu -- diato su quei li -- bri
 che ogni na -- ve che ha approdato
 io con garbo ho se -- que -- strato
 
 Io ho crea -- to la cit -- tà
 di A -- les -- sandro
 Ho fon -- da -- to la struttura
 di A -- les -- san -- dri -- a
 
 Co -- me un fi -- glio ingrato
 L'uo -- mo che ho ospi -- tato
 sec -- co mi ris -- pon -- de
 
 Ba -- si -- li -- kè ho -- dos
 uk es -- ti -- n e --pi
 geo --  me -- trian
}
melodiaVoce = \relative g {
  \global
  r2 r4 g4| 
  c2 e4 g4|
  g2 a4 b4|
  c2 e,4 e4~|
  e4. c8 d8 c8. e8.|
  d2 r4 c4|
  e4 d4. d8 r4|
  c8. c8 c8. d8 d8. d8.|
  \tuplet 3/2 {d4 e e}  g8 g8. f8.|
  g8 g8. g8 r8 c,8 c8. c8|
  g'8 g8. g8 r8 c,8 c8. c8|
  e8 e8. d8 d8. c8 d4
  d16 e f8 e8 d c4 c8 c8
  c4 e8 g c4 b8 a~|
  a2 r4. a8|
  g8 g8. d4 r8. d8 e|
  f8. e8 c 2 r8.|
  c'4. c8 b8 b c b| %  Io ho crea -- to la cit -- tà
  a8 r8 a8 a8 g4 c,4
  c'4. c8 b8 b8 c8 c8|
  b4 a8 a8 g8 g8 c,4 %  di A -- les -- san -- dria
  
  c16 d16 e8 e8 e8 d8 e4  r8
  e16 g g g8 g g8. g8 r4
  a16 b c8 e,8 e e e r4
  d16 c d8 d8 d d d r4
  r1

  c'4. c8 b8 b c b| %  Io ho crea -- to la cit -- tà
  a8 r8 a8 a8 g4 c,4
  c'4. c8 b8 b8 c8 c8|
  b4 a8 a8 g8 g8 c,4 %  di A -- les -- san -- dria
  
  r1|
  \override NoteHead.style = #'cross
  c8 c8 c8 c8 c8 c8 r4
  c8 c8 c8 c8 c8 c8 r4
  c8 c8 c8 c8 c8 c8 r4
  \revert NoteHead.style
  c4 e8 g c4 b8 a~|
  a2 r4. a8|
  g8 g8. d4 r8. d8 e|
  f8. e8 c 2 r8.|


  
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
  c1 c1  e1:m9 c1 a1:m
  a1:m/g g1
  c2 d2:m
  c2 f2
  c2 a2:m
  c2 a2:m
  d1:m
  f1
  c2 a2:m
  f1|g1|c1|
  c2 a2:m| f2 c2
  c2 a2:m| f2 c2
  c1|e1:m|
  a1:m|a1:m
  f2 g2 |
  a2:m g2|
  f2 c2|
  a2:m g2|
  f2 c2|
  c2 e2:m|
  c2 f2|
  c2 f2|
  c1|
  c2 a2:m| f1|g1|c1
  
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


    % --- Staff VOCE ---
   % \new Staff <<
    %  \new Voice = "voce" {
    %    \mark \markup \box "Sospirata"

     %   \melodiaVoce
    %  }
   % >>

    % --- LYRICS legate alla Voice "voce" ---
    \new Lyrics \lyricsto "voce" { \testo }

    % --- Staff CHITARRA (standard) con arpeggio ---
    \new Staff \with {
      instrumentName = "Chitarra"
      midiInstrument = "acoustic guitar (nylon)"
    } {
     \clef "treble_8"
      \arpeggioChitarra
    }

    % --- Tabulatura CHITARRA (stesso arpeggio) ---
    %\new TabStaff \with {
     % stringTunings = #guitar-tuning
    %} {
     % \arpeggioChitarra
    %}
  >>
  \layout { }
  \midi { \tempo 4 = 95 }
}
