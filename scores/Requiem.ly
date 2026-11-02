\version "2.22.1"
\include "predefined-guitar-fretboards.ly"

\header {
  title = "Requiem"
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
    %\fill-line { \null \epsfile #Y #8 #"qrcode.eps" }  % header dx
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

global = { \key g \minor \time 4/4 }

% --- SEZIONI ---

testo = \lyricmode {
Og -- gi la -- scio ques -- ta ter -- ra
 e af -- fi -- do il mio lavo -- ro.
Se -- mi -- na -- to come un se -- me,
 na -- sce -- rà su un nuo -- vo suolo.
Le mie li -- nee, i miei seg -- menti,
 i miei cer -- chi, gli epi -- cen -- tri,
 na -- sce -- ranno anco -- ra a mag -- gio,
 ma sarà un nuo -- vo lingu -- ag -- gio.
 
Sa -- ran -- no co -- di -- ci ci -- fra -- ti,
Nella forma incapsulati
 E saran nuove risposte
 a domande ora non poste.
Quello che io non ho osato
 lo farà chi  ancor non nato,
 dentro la sua religione,
 superando l’esaustione.
E con calcolo essenziale,
 senza usar riga e compasso,
 parlerà degli infiniti
 senza più sembrare pazzo.
Qui si spegne ad Alessandria
 il mio fuoco della vita,
 e saranno ora le muse
 a decidere se è servita.
Lasceranno un epitaffio,
 un’epigrafe la mia:
 nella terra giace Euclide,
 che studiò la geometria.
}
melodiaVoce = \relative g'' {
  \global
  %d4 a8 d4  a8 	d8 c |
  %bes4. g4. r4	|
  d4 d8 g4 d8  g8 f | % oggi lascio...
  ees4. c4. r4	| %  ... terra
  d4 d8 g4 d8  g8 f | % e affido...
  ees4. c4. r4	| % .. lavoro
 
  c16 d ees8 ees f g g  d r8| % seminato..
    d16 d ees 8 d c bes c8 a4|  % nascerà
   r8 a16 a d8 c bes16 a c8 bes8 r8 | %Le mie linee..
   bes16  bes bes8 bes 8 r8 c16 d16 d 8 d r8| % i miei cerchi
   d16 d d8 ees 8 f g g d4| % nasceranno ancoea...
  d16 d g8 ees c bes c a4 | % ma sarà...
  r8 d8 g bes d |
  d8 c bes c c
  
}
bassoGuida = \fixed c {
  \global
  \clef bass

 
  
}

% Accordi: una misura ciascuno (allineati alle 8 misure dell'arpeggio)
accordi = \chordmode {
  d1:m g1:m  d1:m g1:m
 
  
 
  
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

%\new Staff \with {
%  instrumentName = "Basso"
%  shortInstrumentName = "Bs."
%  midiInstrument = "electric bass (pick)"} { \bassoGuida}

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
  \midi { \tempo 4 = 90 }
}
