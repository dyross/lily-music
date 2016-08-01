#(set-default-paper-size "letter")

\version "2.18.0"
\header{
  title = "21st Century Schizoid Man"
  composer = "King Crimson"
  instrument = "Guitar"
}
\include "english.ly"
\layout {
  indent = 0.0\cm
  \omit Voice.StringNumber
}

\markup { Verse 1 (0:30) }

music = \relative c {
  \set minimumFret = #1
  \set restrainOpenStrings = ##t

  \key g \minor

  \repeat unfold 2 {
    < c g' >4
    < bflat f' >16(\glissando
    < c g' >)
    < bflat eflat >8
    < c f >8-.
    < c g' >8(
    < c g' >4)
    < f, c' f>4.
    < fsharp csharp' fsharp>4.
    < g d' g>4
  }

}
\score {
  \new StaffGroup <<
    % \new ChordNames {
    %   \powerChords
    %   \music
    % }
    \new Staff {
      \clef "treble"
      \music
    }
    \new TabStaff {
      % \tabFullNotation
      \music
    }
  >>
}
