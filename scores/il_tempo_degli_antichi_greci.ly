\version "2.22.1"
\language "english"
\include "predefined-guitar-fretboards.ly"

\header {
  title = "Il tempo degli antichi greci"
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

global = { \key f \major \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
  Pri -- ma an -- cora dei cristia -- ni
  sul -- le coste in riva al mare
  c'e -- ran po -- poli pa -- gani con le arti nelle ma -- ni
  
  co -- stru -- i - vano sis -- temi
  per com -- pren -- dere gli sche -- mi
  co -- n dise -- gni arti -- cola -- ti,
  sopra vasi ora spezza -- ti. 
  
  Que -- sto è il tem -- po degli antichi greci,
  A -- les -- san -- dria sa -- rà il cen -- tro della ci -- vil -- tà,
  den -- tro la sua bi -- blio -- te -- ca,
  la cul -- tu -- ra an -- drà ol -- tre le di -- vi -- ni -- tà.
}
melodiaVoce = \relative f' {
  \global
  r4 r4 r4 r8 d16 df16|
  d8 a'8 a8 f8 d4 r8 d16 d16 | 
  d8 bf'8 bf8 a8 g4 r8 b16 a16|
  bf8 a bf8 a bf8 a e4 |
  f8 e8 e4 r2 |
  
  r2. r8 d16 df16|
  d8 a'8 a8 f8 d4 r8 d16 d16 | 
  d8 bf'8 bf8 a8 g4 r8 b16 a16|
  bf8 a bf8 a bf8 a e4 |
  f8 e8 e4 r2 |
  
 %rit
 d16 d16 d16 d16 d8 c8 c8. a16 a4   |
 g16' f g g g16 f g g g16 f g g a8 r8|
 d16 d16 d16 d16 d8 c8 c8. a16 a4   |
 g16 f g g g16 f g g g16 f g8  a8 a8|
  
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
d1:m|
d1:m|g1:m|a1:m|d1:m
d1:m|
d1:m|g1:m|a1:m|d1:m
%rit
bf2 f2 | c1 | bf2 f2 | A1
  
  %c2 f2 c2 a2:m c2 a2:m
  %d1:m f1 c2 a2:m f1
  %g1 c1 c2 a2:m f2 c2 c2 a2:m
  %f2 c2 c1 c1 e1:m a1:m a1:m f2 g2
  %a2:m g2 f2 c2 a2:m g2 f2 c2 c1 c2 d2:m
  %c2 f2 c1 c2 a2:m f1 g1 c1
}

arpeggioChitarra = \relative c' {
  \global
  

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
