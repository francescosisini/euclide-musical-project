\version "2.22.1"
\autoBeamOff
\language "english"
\include "predefined-guitar-fretboards.ly"

\layout {
  \context {
    \Lyrics
    \override LyricHyphen.minimum-distance = #0.6
  }
}
\header {
  title = "Il tempo degli antichi greci"
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

global = { \key f \major \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
  Pri -- ma anco -- ra dei cri -- stiani
  sul -- le co -- ste in riva_al mare
  c'e -- ran po -- po -- li pa -- ga -- ni con le ar -- ti nel -- le mani
  
  co -- stru -- i - vano sis -- temi
  per com -- pren -- dere gli sche -- mi
  co -- n di -- se -- gni arti -- cola -- ti,
  so -- pra vasi ora spez -- za -- ti. 
  
  Questo è_il tem -- po de -- gli anti -- chi gre -- ci,
  A -- le -- sandria sa -- rà il cen -- tro del -- la ci -- vil -- tà,
  den -- tro la sua bi -- blio -- te -- ca,
  la cul -- tu -- ra andrà ol -- tre le di -- vi -- ni -- tà.
  
  Sul -- le ce -- ne -- ri ar -- gentate,
  di A -- les -- san -- dro il meceate
  To -- lo -- mèo ha co -- strui -- to,
  dell’Orien -- te il nuo -- vo or -- di -- to.
  
  E la for -- za mi -- li -- tare,
  con sol -- da -- ti e ge -- ne -- rali,
  ce -- de il pas -- so agli scien -- zia -- ti,
  ad_Ale -- ssan -- dria ra -- du -- na -- ti.
  
  Que -- sto è il tem -- po degli antichi greci,
  A -- les -- san -- dria sa -- rà il cen -- tro della ci -- vil -- tà,
  den -- tro la sua bi -- blio -- te -- ca,
  la cul -- tu -- ra an -- drà ol -- tre le di -- vi -- ni -- tà.
}
melodiaVoce =  \relative f' {
  \global
  %\autoBeamOff
  r1|
  r4 r4 r4 r8 d16 df16| 			%Pri --
  d8[ a'8] a8 f8 [d4] r8 d16 df16 | 	%-- ma an -- cora dei cristia -- ni
  d8 [bf'8] bf8 [a8] g4 r8 bf16 a16|	%sul -- le coste in riva al mare c'e
  bf8 [ a bf8] a [bf8 a8] a8 a8 |		% -- ran po -- po -- li pa -- ga -- ni
  a8  e8 f8 e8 d8  r4 d16 df16|		%con le ar -- ti nel -- le mani
  
  d8[ a'8] a8 [f8] d4 r8 d16 df16 |		%co -- stru -- i - vano sis -- temi
  d8 [bf'8] bf8 [a8] g4 r8 bf16 a16|		%per com -- pren -- dere gli sche -- mi
  bf8 a bf8 a bf8 a8 a8 a8 |			%co -- n dise -- gni arti -- cola -- ti,
  a8  e8 f8 e8 d8  r4. 		%sopra vasi ora spezza -- ti. 
  
 %rit
 |	r2  bf'4 c4|      %%Questo 
 d16 d16 d16 d16 	d8 c16 c8 a8 r8. g16 f16   | %è_il tem -- po de -- gli anti -- chi gre -- ci,
 g16 g16		g16 f16 g16 g16		g16 f g16 a8  a8 r8.|
 d16 d16 d16 d16 	d8 c16 c8 a8 r16  r4    |
 g16 f g g g16 f g g g16 f g8  a4|
 
 r4 r4 r4.  d,16 df16|
 d8[ a'8] a8 f8 [d4] r8 d16 df16 | 	%-- ma an -- cora dei cristia -- ni
  d8 [bf'8] bf8 [a8] g4 r8 bf16 a16|	%sul -- le coste in riva al mare c'e
  bf8 [ a bf8] a [bf8 a8] a8 a8 |		% -- ran po -- po -- li pa -- ga -- ni
  a8  e8 f8 e8 d8  r4 d16 df16|	
 
 %r2. r8 d16 df16|
 d8 d8 d8 e8 f4 e8 f8 e8
 e8 d8 d8 c8 bf8 r8 f'16 e16
 f8 e8 f8 e8 f8 e8 f8 e8
 f8 e8 f8 e8 f8 e8 ~ e4
 
%rit
 |	r2  bf'4 c4|      %%Questo 
 d16 d16 d16 d16 	d8 c16 c8 a8 r8. g16 f16   | %è_il tem -- po de -- gli anti -- chi gre -- ci,
 g16 g16		g16 f16 g16 g16		g16 f g16 a8  a8 r8.|
 d16 d16 d16 d16 	d8 c16 c8 a8 r16  r4    |
 g16 f g g g16 f g g g16 f g8  a4|
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
%ver \
d1:m|
d1:m|
d1:m|g1:m|a1|a2 d2:m
%ver 2
d1:m|g1:m|a1|a2d2:m|d1:m
%rit
bf2 f2 | c1 | bf2 f2 | a1
%ver 3
a2 d2:m|
d1:m|g1:m|a1|d1:m
%ver 4
d1:m|
d1:m|g1:m|a1|a1

%rit
bf2 f2 | c1 | bf2 f2 | a1
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
  %  \new Staff \with {   instrumentName = "Chitarra" midiInstrument = "acoustic guitar (nylon)" } {\clef "treble_8" \arpeggioChitarra}

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
