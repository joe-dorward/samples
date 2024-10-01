## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went. That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age about ten-to-fifteen thousand years ago (but don't quote me on that). If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#BB2528',
      'primaryTextColor': '#fff',
      'primaryBorderColor': '#7C0000',
      'lineColor': '#F8B229',
      'secondaryColor': '#006100',
      'tertiaryColor': '#fff'
    }
  }
}%%
```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'fontSize':'8pt',

      'primaryColor': '#BB2528',
      'primaryTextColor': '#fff',
      'primaryBorderColor': '#7C0000',
      'lineColor': '#F8B229',
      'secondaryColor': '#006100',

      'tertiaryColor': 'white',
      'tertiaryTextColor': 'forestgreen',
      'tertiaryBorderColor': 'forestgreen'
    }
  }
}%%
flowchart LR

  %%classDef Period fill:linen, stroke:darkred, color:darkred;
  %%classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, line-height:150%, margin:0px, padding:0px;
  %%classDef Summary fill:white, stroke:white, text-align:left
  %%classDef Culture fill:white, stroke:forestgreen, color:forestgreen, font-family:verdana, margin:0px, padding:0px;
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


  %% ========== ========== ========== ========== ==========
  class NATUFIAN_CULTURE_WRAPPER,PRE_POTTERY_NEOLITHIC_A_WRAPPER Culture
  class NATUFIAN_CULTURE,PRE_POTTERY_NEOLITHIC_A Note;
  %% ========== ========== ========== ========== ==========
  YEAR_DOT-.-13000-.-NATUFIAN_CULTURE_WRAPPER
  YEAR_DOT-.-10000-.-PRE_POTTERY_NEOLITHIC_A_WRAPPER

