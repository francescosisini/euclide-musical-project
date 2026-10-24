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
 % subtitle = "Euclide"
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

%\paper {
%  tagline = \markup {
%    \tiny \line {
%      "© 2025 Edizioni Tradizionali — "
%      "CC BY 4.0 — "
%      \with-url #"https://creativecommons.org/licenses/by/4.0/" "creativecommons.org/licenses/by/4.0"
%      " — Testo rifinito con ChatGPT, audio Suno, trascrizione e arrangiamento degli autori."
%    }
%  }
%}

%\paper {
 % oddHeaderMarkup = \markup {
    %\fill-line { \null \epsfile #Y #8 #"qrcode.eps" }  % header dx 
  %}
%}
\paper {
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:factor (/ staff-height pt 25)
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
melodiaVoce =  \relative f'' {
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
  a8  e8 f8 e8 d8  r8 		%sopra vasi ora spezza -- ti. 
   bf'8 c8|      %%Questo 
 %rit
  
 d16 d16 d16 d16 	d8 c16 c8 a8 r8. g16 f16   | %è_il tem -- po de -- gli anti -- chi gre -- ci,
 g16 g16		g16 f16 g16 g16		g16 f g16 a8  a8 r8.|
 d16 d16 d16 d16 	d8 c16 c8 a8 r16  r4    |
 g16 f g g g16 f g g g16 f g8  a4|
 
 
 %strumentale
 r1 r1 r1
 
 r4 r4 r4.  d,16 df16|
 d8[ a'8] a8 f8 [d4] r8 d16 df16 | 	%-- ma an -- cora dei cristia -- ni
  d8 [bf'8] bf8 [a8] g4 r8 bf16 a16|	%sul -- le coste in riva al mare c'e
  bf8 [ a bf8] a [bf8 a8] a8 a8 |		% -- ran po -- po -- li pa -- ga -- ni
  a8  e8 f8 e8 d8  r4 d16 df16|	
 
 %r2. r8 d16 df16|
 d8 d8 d8 e8 f4 e8 f8 e8
 e8 d8 d8 c8 bf8 r8 f'16 e16
 f8 e8 f8 e8 f8 e8 f8 e8
 f8 e8 f8 e8 f8 e8 
 
%rit
 |	  bf'8 c8|      %%Questo 
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
d1:m|g1:m|a1|a2d2:m|
%rit
bf2 c2 | f1 | bf2 c2 | a1

 %strumentale
 d1:m|g1:m|a1

%ver 3
a2 d2:m|
d1:m|g1:m|a1|a2d2:m
%ver 4
d1:m|
g1:m|a1:m|a2d2:m|

%rit
bf2 f2 | c1 | bf2 f2 | a1
  %c2 f2 c2 a2:m c2 a2:m
  %d1:m f1 c2 a2:m f1
  %g1 c1 c2 a2:m f2 c2 c2 a2:m
  %f2 c2 c1 c1 e1:m a1:m a1:m f2 g2
  %a2:m g2 f2 c2 a2:m g2 f2 c2 c1 c2 d2:m
  %c2 f2 c1 c2 a2:m f1 g1 c1
}

basso = \relative c {
  % 1-11 — strofe: linea più ariosa, con fondamentali, quinte e qualche terza
  d4 a d a |                 % 1  Dm
  d4 a c a |                 % 2  Dm
  d4 a f a |                 % 3  Dm
  g4 d bf d |                % 4  Gm
  a4 e cs e |                % 5  A
  a4 e d a |                 % 6  A -> Dm
  d4 a f a |                 % 7  Dm
  g4 d bf d |                % 8  Gm
  a4 e cs e |                % 9  A
  a4 e d a |                 % 10 A -> Dm
  d4 a c a |                 % 11 Dm

  % 12-15 — primo ritornello: più largo e cantabile
  bf4 f c' g |               % 12 Bb -> C
  f,4 c' a c |               % 13 F
  bf4 f c' g |               % 14 Bb -> C
  a4 e cs e |                % 15 A

  % 16-18 — strumentale: un po' più di movimento
  d8 a d f a4 f |            % 16 Dm
  g,8 d' g bf d4 bf |        % 17 Gm
  a,8 e' a cs e4 cs |        % 18 A

  % 19-28 — seconda parte
  a4 e d a |                 % 19 A -> Dm
  d4 a f a |                 % 20 Dm
  g4 d bf d |                % 21 Gm
  a4 e cs e |                % 22 A
  d4 a f a |                 % 23 Dm
  d4 a c a |                 % 24 Dm
  d4 a f a |                 % 25 Dm
  g4 d bf d |                % 26 Gm
  a4 e cs e |                % 27 A
  a4 e cs e |                % 28 A

  % 29-32 — ritornello finale
  bf4 f f c |                % 29 Bb -> F
  c'4 g e g |                % 30 C
  bf4 f f c |                % 31 Bb -> F
  a'4 e cs e |               % 32 A
}

% Pizzicati: piccoli accenti nelle strofe, lasciando liberi ritornelli e strumentale.
pizzicati = \relative c' {
  r1 |                         % 1 intro
  r4 <d f a>4 r4 <d f a>4 |   % 2
  r4 <d f a>4 r4 <d f a>4 |   % 3
  r4 <g bf d>4 r4 <g bf d>4 | % 4
  r4 <a cs e>4 r4 <a cs e>4 | % 5
  r4 <a cs e>4 r4 <d f a>4 |  % 6
  r4 <d f a>4 r4 <d f a>4 |   % 7
  r4 <g bf d>4 r4 <g bf d>4 | % 8
  r4 <a cs e>4 r4 <a cs e>4 | % 9
  r4 <a cs e>4 r4 <d f a>4 |  % 10
  r4 <d f a>4 r4 <d f a>4 |   % 11
  r1 | r1 | r1 | r1 |          % 12-15 ritornello
  r1 | r1 | r1 |               % 16-18 strumentale
  r4 <a cs e>4 r4 <d f a>4 |  % 19
  r4 <d f a>4 r4 <d f a>4 |   % 20
  r4 <g bf d>4 r4 <g bf d>4 | % 21
  r4 <a cs e>4 r4 <a cs e>4 | % 22
  r4 <d f a>4 r4 <d f a>4 |   % 23
  r4 <d f a>4 r4 <d f a>4 |   % 24
  r4 <d f a>4 r4 <d f a>4 |   % 25
  r4 <g bf d>4 r4 <g bf d>4 | % 26
  r4 <a cs e>4 r4 <a cs e>4 | % 27
  r4 <a cs e>4 r4 <a cs e>4 | % 28
  r1 | r1 | r1 | r1 |          % 29-32 ritornello finale
}

% Archi: tappeto armonico soltanto nei due ritornelli.
archi = \relative c' {
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 1-11
  <bf d f>2 <c e g>2 |       % 12
  <f a c>1 |                 % 13
  <bf d f>2 <c e g>2 |       % 14
  <a cs e>1 |                % 15
  r1 | r1 | r1 |             % 16-18
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 19-28
  <bf d f>2 <f a c>2 |       % 29
  <c e g>1 |                 % 30
  <bf d f>2 <f a c>2 |       % 31
  <a cs e>1 |                % 32
}

% Flauto: risposta melodica nello strumentale e piccola controvoce finale.
flauto = \relative c'' {
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 1-15
  a4 f8 e d4 f |             % 16 Dm
  g4 bf8 a g4 d |            % 17 Gm
  e4 cs8 d e4 a |            % 18 A
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 19-28
  d'4 c a f |                % 29
  e4 g c g |                 % 30
  d'4 c a f |                % 31
  cs2 e2 |                   % 32
}

fisarmonica = \relative c''
{  r1 r1 r1 r1 r1 r1 
   r1 r1 r1 r1 r1 r1 
   r1 r1 r1 
    a4 f4 d4 g8 a8|
    bf4 g4 d4 r4 |
    e16 f16 e16 f16 e4 e16 f16 e16 f16 e4 | f4 d4 r2 
}


% Batteria semplice: cassa su 1 e 3, rullante su 2 e 4,
% charleston in ottavi. La prima misura resta vuota come introduzione.
batteria = \drummode {
  \time 4/4
  r1 |
  \repeat unfold 31 {
    <bd hh>8 hh <sn hh> hh <bd hh> hh <sn hh> hh |
  }
}

% Chitarra nylon: arpeggi soltanto nei ritornelli, per aprire il suono senza
% sovrapporsi ai pizzicati delle strofe.
arpeggioChitarra = \relative c' {
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 1-11
  bf8 f' bf d c, g' c e |    % 12 Bb -> C
  f,8 c' f a c a f c |       % 13 F
  bf8 f' bf d c, g' c e |    % 14 Bb -> C
  a,8 e' a cs e cs a e |     % 15 A
  r1 | r1 | r1 |             % 16-18
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 19-28
  bf8 f' bf d f, c' f a |     % 29 Bb -> F
  c,8 g' c e g e c g |        % 30 C
  bf8 f' bf d f, c' f a |     % 31 Bb -> F
  a,8 e' a cs e cs a e |      % 32 A
}

% Arpa: colore molto episodico. Un gesto d'apertura e tre battute nello
% strumentale; poi una piccola chiusura finale.
arpa = \relative c' {
  d8 a' d f a f d a |         % 1 intro Dm
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 2-15
  d8 a' d f a f d a |         % 16 Dm
  g,8 d' g bf d bf g d |      % 17 Gm
  a8 e' a cs e cs a e |       % 18 A
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | r1 | % 19-31
  a8 e' a cs e cs a e |       % 32 chiusura
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
    
    
    %{
   \new Staff \with { instrumentName = "Fisarmonica" midiInstrument = "accordion"}{\fisarmonica}
    
   \new Staff \with {
     instrumentName = "Basso"
     midiInstrument = "acoustic bass"
     midiMinimumVolume = #0.45
     midiMaximumVolume = #0.70
   } {\clef bass \time 4/4 \basso}

   \new Staff \with {
     instrumentName = "Pizzicati"
     midiInstrument = "pizzicato strings"
     midiMinimumVolume = #0.22
     midiMaximumVolume = #0.42
   } { \global \pizzicati }

   \new Staff \with {
     instrumentName = "Archi"
     midiInstrument = "string ensemble 1"
     midiMinimumVolume = #0.18
     midiMaximumVolume = #0.36
   } { \global \archi }

   \new Staff \with {
     instrumentName = "Flauto"
     midiInstrument = "flute"
     midiMinimumVolume = #0.28
     midiMaximumVolume = #0.52
   } { \global \flauto }

   \new Staff \with {
     instrumentName = "Arpa"
     midiInstrument = "orchestral harp"
     midiMinimumVolume = #0.22
     midiMaximumVolume = #0.44
   } { \global \arpa }

   \new DrumStaff \with { instrumentName = "Batteria" } { \batteria }
  
  
  
  

    % --- Staff CHITARRA (standard) con arpeggio ---
    \new Staff \with {
      instrumentName = "Chitarra"
      midiInstrument = "acoustic guitar (nylon)"
      midiMinimumVolume = #0.22
      midiMaximumVolume = #0.42
    } {\clef "treble_8" \time 4/4 \arpeggioChitarra}

    % --- Tabulatura CHITARRA (stesso arpeggio) ---
    \new TabStaff \with {
      stringTunings = #guitar-tuning
      midiMinimumVolume = #0.0
      midiMaximumVolume = #0.0
    } {
      \arpeggioChitarra
    }
%}
  >>
  
  \layout { }
  \midi { \tempo 4 = 95 }
}
