\version "2.22.0"

\header {
  title = "小幸運"
 
  tagline = ""
}

chordsPart = \chordmode {
 
  % 主歌 A1
  c1 | d:7 | g:7 | c |
  a:m | d | g:7 | c |
  % 主歌 A2
  c1 | d:7 | g:7 | c |
  a:m | d:7 | g:7 | c |
  % 導歌 (Pre-Chorus)
  f1 | g | e:m | a:m |
  d:m | d | g:sus4 | g:7 |
  % 副歌 (Chorus)
  c1 | g | a:m | e:m |
  f1 | c | d:7 | g2 g:7 |
  c1 | g | a:m | e:m |
  f1 | c | d:7 | g:7 | c1 |
}

melodyPart = {
  \clef treble
  \key c \major
  \time 4/4

 

  % --- 主歌 A1 ---
  r8 e' e' g' g' c'' c'' b' | b' a' e' a'~a'2  | r8 a' a' b' b' e'' e'' b' | b' g' e' g' ~ g'2 | \break
  r8 e' e' g' g' c'' c'' b' | b' a' e' a'~a'4 a'8 b' | r8 bes' b' e''4 d''4  c''8~ | c''1| \break

  % --- 主歌 A2 ---
  r8 e' e' g' g' c'' c'' b' | b' a' e' a'~a'2 | r8 a' a' b' b' e'' e'' b' | b'4 e'8 g'8~g'2 | \break
  r8 e' e' g' g' c'' c'' b' | b' c'' e' a'4 a'8 c'' b'~ | b' bes' b' e''4 d'' c''8~ | c''2 e''8 d''c''8 b' | \break

  % --- 導歌 (Pre-Chorus) ---
  a'8 a' a' a' a' e'' d'' d''~ | d''2 d''8 c''  b' a'| g' g' g' e' g' d''~d'' c''~| c''4~c''8 c'' c'' g' g' c' | \break
  e' d' d' a'4. r8 a'~ |a' a' a' a'16 c''~c''8 a' c'' a' | c'' c'' c'' c'' e'' d''~d'' d''~ | d''4. g'8 a' | \break

  % --- 副歌 1 ---
  e''8 g'' d'' e'' e'' g'' d'' e'' | e'' d'' d'' e'' f'' f'' e'' d'' | c'' e'' a'' c'' c'' e'' a'' c'' | c'' b' b' a' g' f' e' c' | \break
  a'8 f'' f'' f'' r g' f' e' | e' c'' c'' r f' e' c' c' | f' d'' d'' d'' r d'' c'' d'' | e'' d'' c'' e'' e'' d'' d'' c'' | \break

  % --- 副歌 2 ---
  e''8 g'' d'' e'' e'' g'' d'' e'' | e'' d'' d'' e'' f'' f'' e'' d'' | c'' e'' a'' c'' c'' e'' a'' c'' | c'' b' b' a' g' f' e' c' | \break
  a'8 f'' f'' f'' r g' f' e' | e' c'' c'' c'' r f' e' c' | f' d'' d'' d'' ~ d''2 | r8 e'' c'' c'' e'' d'' d'' c'' | c''1 \bar "|."
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
