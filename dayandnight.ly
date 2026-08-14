\version "2.22.0"

\paper {
  % 調大基本距離 (預設通常是 12)
  system-system-spacing.basic-distance = #20
  % 調大邊距/填充空間 (預設通常是 1)
  system-system-spacing.padding = #3
  }
<<
  % 1. 和弦軌道
  \new ChordNames {
    \chordmode {
      \key g \major
       c2. g4/b|a2:m a:m/g|c/d d:7| g g/f| c/e c:m/ees|g/d c/d|g1|
c2 d/c| b2:m e:m| a2:m c/d| g f/g| c2 d/c| b:m e:m| a:m c/d| g c/d
    }
  }
  
  % 2. 五線譜與旋律軌道（移除音符上的高音記號避免舊版相容問題）
  \new Staff {
    \new Voice = "melody" \relative c' {
   
      \key g \major
      \time 4/4
     fis8 fis16 fis16~fis8 g8 g4 a8 b8|
     b8. c16~c4 b8. c16~c8 g8|g8 fis16 fis16~fis8 g8 a4 g8 a8|
     a8. b16~b4 a8. b16~b8 g8|d'8 d16 d8 d8.c4 \tuplet 3/2 { c8 b8 a8 }
     b4.g8 c8 b8 a16 (g16) g8| g1_"Fine." \bar "||" 
     \sectionLabel "Bridge" e8 fis8 g8 a8~a2 |fis8 g8 a8 b8~b4 a8 b8|
     c4 c4 c8 b8 a8 b8~b1  
      e,8 fis8 g8 a8~a2 |fis8 g8 a8 b8~b4 a8 b8|
     c4 c4 c8 b8 a8 g8~g2. g8 a8_" to Chorus" \bar "||"  
    }
  }
  
  % 3. 歌詞軌道
  \new Lyrics \lyricsto "melody" {
    在 今 在 永 在 榮 耀
    榮 耀 榮 耀  配 得 頌 讚 愛 戴
    聖 哉 聖 哉 聖 哉 
    全 地 向 祢 跪 拜 尊 貴 榮 耀 都 歸 寶 座 羔 羊
    日 日 夜 夜 不 停 獻 上 禱 告 如 香 不 停 升 起
    日 日 夜 夜 不 停 獻 上 讚 美 獻 祭 永 遠 不 息
  }
>>
