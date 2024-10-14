## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went. That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age about ten-to-fifteen thousand years ago (but don't quote me on that). If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).

```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'fontSize':'8pt',
      'fontFamily':'verdana',

      'primaryColor': '#CDE498',
      'primaryTextColor': 'forestgreen',
      'primaryBorderColor': 'forestgreen',

      'lineColor': 'red',
      'secondaryColor': 'red',


      'tertiaryColor': 'white',
      'tertiaryTextColor': 'forestgreen',
      'tertiaryBorderColor': 'forestgreen'
    }
  }
}%%
flowchart LR
  classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, line-height:150%, margin:0px, padding:0px;

  classDef Summary_1 color:black, text-align:left;
  classDef Summary_2 fill:rose, stroke:purple, text-align:left, width:300px, margin:50px, padding:50px;
  classDef Summary_3 fill:honeydew, stroke:forestgreen, text-align:left, width:400px, margin:70px, padding:110px;
  classDef Summary_4 fill:honeydew, stroke:forestgreen, text-align:left, width:350px, margin:0px, padding:150px;


  %% ========== ========== ========== ========== ==========
  YEAR_DOT(("Year Dot"))
  %% ========== ========== ========== ========== ==========
  7500_1([from ~ 7,500 BCE])
  CATALHOYUK_1[Çatalhöyük]
  CATALHOYUK_NOTE_1[#151; the earliest known town-like human settlement, where hundreds of people lived in a cluster of mudbrick houses.]

  7500_2([from ~ 7,500 BCE])
  CATALHOYUK_2[Çatalhöyük]
  CATALHOYUK_NOTE_2[#151; the earliest known town-like human settlement, where hundreds of people lived in a cluster of mudbrick houses.]

  7500_3([from ~ 7,500 BCE])
  CATALHOYUK_3[Çatalhöyük]
  CATALHOYUK_NOTE_3[#151; the earliest known town-like human settlement, where hundreds of people lived in a cluster of mudbrick houses.]

  7500_4([from ~ 7,500 BCE])
  CATALHOYUK_4[Çatalhöyük]
  CATALHOYUK_NOTE_4[#151; the earliest known town-like human settlement, where hundreds of people lived in a cluster of mudbrick houses. #151; the earliest known town-like human settlement, where hundreds of people ...]
  %% ========== ========== ========== ========== ==========
  class CATALHOYUK_1, Note;
  class CATALHOYUK_NOTE_1 Summary_1
  class CATALHOYUK_NOTE_2 Summary_2
  class CATALHOYUK_NOTE_3 Summary_3
  class CATALHOYUK_NOTE_4 Summary_4
  %% ========== ========== ========== ========== ==========
  YEAR_DOT-.-7500_1-.-CATALHOYUK_1~~~CATALHOYUK_NOTE_1
  YEAR_DOT-.-7500_2-.-CATALHOYUK_2~~~CATALHOYUK_NOTE_2
  YEAR_DOT-.-7500_3-.-CATALHOYUK_3~~~CATALHOYUK_NOTE_3
  YEAR_DOT-.-7500_4-.-CATALHOYUK_4~~~CATALHOYUK_NOTE_4
