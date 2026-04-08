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
      "© 2025 Edizioni Tradizionali — "
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

global = { \key g \major \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
  si gnore To lo meo
  io vi sono gra -- to
  per a  ver  mi
 qui o -- spi -- ta -- to
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
  c1 c1  e1:m9 c1 a1:m
  a1:m/g g1
  %c2 d2:m
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
  b,8 g b c' b2 | % Am
  
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
  \midi { \tempo 4 = 112 }
}
