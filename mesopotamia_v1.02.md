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
  classDef Summary fill:white, stroke:white, color:black, text-align:left
  %% ========== ========== ========== ========== ==========
  YEAR_DOT(("Year Dot"))
  %% ========== ========== ========== ========== ==========
  13000([from ~ 13000 BCE])
    subgraph NATUFIAN_CULTURE_WRAPPER[Natufian Culture]
      NATUFIAN_CULTURE[Natufian Culture]
      click NATUFIAN_CULTURE "https://en.wikipedia.org/wiki/Natufian_culture" _blank
    end

  10000([from ~ 10,000 BCE])
    subgraph PRE_POTTERY_NEOLITHIC_A_WRAPPER[Pre-Pottery Neolithic A]
      PRE_POTTERY_NEOLITHIC_A[Pre-Pottery Neolithic A]
      click PRE_POTTERY_NEOLITHIC_A "https://en.wikipedia.org/wiki/Pre-Pottery_Neolithic_A" _blank
    end

  9500([from ~ 9,500 BCE])
    GOBEKLI_TEPE[Göbekli Tepe]
    click GOBEKLI_TEPE "https://en.wikipedia.org/wiki/Göbekli_Tepe" _blank

  7500([from ~ 7,500 BCE])
    CATALHOYUK[Çatalhöyük]
    CATALHOYUK_NOTE[#151; the earliest known town-like human settlement, where hundreds of people lived in a cluster of mudbrick houses.]
    click CATALHOYUK "https://en.wikipedia.org/wiki/Çatalhöyük" _blank

  7000([from ~ 7,000 BCE])
    subgraph POTTERY_NEOLITHIC_SUBGRAPH[Pottery Neolithic]
      POTTERY_NEOLITHIC[Pottery Neolithic]
    end


  %% ========== ========== ========== ========== ==========
  class NATUFIAN_CULTURE,PRE_POTTERY_NEOLITHIC_A,GOBEKLI_TEPE,CATALHOYUK,POTTERY_NEOLITHIC Note;

  class CATALHOYUK_NOTE Summary
  %% ========== ========== ========== ========== ==========
  YEAR_DOT-.-13000-.-NATUFIAN_CULTURE_WRAPPER
  YEAR_DOT-.-10000-.-PRE_POTTERY_NEOLITHIC_A_WRAPPER
  YEAR_DOT-.-9500-.-GOBEKLI_TEPE
  YEAR_DOT-.-7500-.-CATALHOYUK~~~CATALHOYUK_NOTE
  YEAR_DOT-.-7000-.-POTTERY_NEOLITHIC_SUBGRAPH
