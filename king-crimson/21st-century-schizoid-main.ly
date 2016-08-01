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

lickOne = \relative {
  < c g' >4
  < bflat f' >16(\glissando
  < c g' >)
  < bflat eflat >8
  < c f >8-.
  < c g' >8(
  < c g' >4)
}

lickTwo = \relative {
  < f, c' f>4.
  < fsharp csharp' fsharp>4.
  < g d' g>4
}

lickThree = \relative c'' {
  < eflat\3 f\2 > 4.
  < e\3 fsharp\2 > 4.
  < f\3 g\2 > 4
}

music = \relative {
  \set minimumFret = #1
  \set restrainOpenStrings = ##t

  \key g \minor

  \repeat unfold 2 {
    \repeat unfold 2 {
      \lickOne
      \lickTwo
    }
    \lickOne
    \lickThree
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
