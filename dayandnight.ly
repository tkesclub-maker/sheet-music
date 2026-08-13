\version "2.22.0"


<<
  % 1. 和弦軌道
  \new ChordNames {
    \chordmode {
      \key g \major
       c g/b |a:m a:m/g|c/d d| g g/f| c/e c:m/ees|g/d c/d|g|
c d/c| b:m e:m| a:m c/d| g f/g| c d/c| b:m e:m| a:m c/d| g c/d
    }
  }
  
  % 2. 五線譜與旋律軌道（移除音符上的高音記號避免舊版相容問題）
  \new Staff {
    \new Voice = "melody" \relative c' {
 
      \key g \major
      \time 4/4
     fis8 fis16 fis16~fis8 g8 g4 a8 b8|g1
      g8 g16 g16~g8 g8 a8 g16 a16~a8 c8 |
       g8 e8 g2. |
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
