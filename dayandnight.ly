\version "2.22.0"

\header {
  title = "日日夜夜"
  subtitle = "結37:27, 賽62:6-7, 啟4:8, 5:13"
  composer = "曾祥怡曲"
arranger= "曾祥怡、游智婷詞"

}

<<
  % 1. 和弦軌道
  \new ChordNames {
    \chordmode {
      \key g \major
      g1  c1/g | g1  c1/g |g1  c1/g | d |   c1  d1/c | b1  e1:m |a1:m c/d|g


      g1 c/d| g g/b| c g/b|a:m a:m/g|c/d d| g g/f| c/e c:m/ees|g/d c/d|g|
c d/c| b:m e:m| a:m c/d| g f/g| c d/c| b:m e:m| a:m c/d| g c/d
    }
  }
  
  % 2. 五線譜與旋律軌道（移除音符上的高音記號避免舊版相容問題）
  \new Staff {
    \new Voice = "melody" \relative c' {
    \tempo 4 = 70
      \key g \major
      \time 4/4
      g'8 g16 g16~g8 g8 a8 g16 g16~g8 fis8 | g8 e8 g2. |
      g4 g8 g8 g4 a8 a8 | a8 a8 c8 b2. |
    }
  }
  
  % 3. 歌詞軌道
  \new Lyrics \lyricsto "melody" {
    耶 和 華 施 恩 惠 醫 治 
    我 的 心 __
    日 日 夜 夜 我 必 尊 崇 
    祢 的 名 __
  }
>>
