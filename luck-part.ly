\version "2.22.0"

\header {
  title = "直笛練習曲~改編自HEBE小幸運副歌"
 
  tagline = ""
}



melodyPart = {
  \clef treble
  \key c \major
  \time 4/4

 

 

  % --- 副歌 1 ---
 r4. g'8 e'' d'' c'' d'' |e''8 g' d'' e''~e'' g' d'' e''~| e'' d'' d'' e'' f''  e'' d'' c'' | c'' e' a' c''~c'' e' a' c'' | b' b'4 e''8 g'' e'' c'' b' | \break
  a'8 f'' f''4.  g''8 f'' e'' | g' e'' e''4.  f''8 e'' c''  | fis' d'' d''4~ d''4.  c''8  | e''4 d''8 c'' e''4  d''8 c'' | \break

  % --- 副歌 2 ---
  e''8 g' d'' e''~e'' g' d'' e''~| e'' d'' d'' e'' f''  e'' d'' c'' | c'' e' a' c''~c'' e' a' c'' | b' b'4 e''8 g'' e'' c'' b' | \break
  a'8 f'' f''4.  g''8 f'' e'' | g' e'' e''4.  f''8 e'' c''  | fis' d'' d''2.  | r8 e''8 c''8 c'' e''4  d''8 c'' |c''1 \bar "||" \break
  }
  \score {
  <<
    \new ChordNames { \chordsPart }
    \new Staff { \melodyPart }
  >>
  \layout {
    \context {
      \Staff
      \consists "Volta_engraver"
    }
  }
}
