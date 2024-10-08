## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went.
That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age more than ten-thousand years ago (but don't quote me on that).

If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. 
Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).

### Neolithic
```mermaid
%%{
  init: {
    'theme': 'forest',
    'themeVariables': {
      'fontSize':'8pt'

    }
  }
}%%
flowchart LR

classDef Node fill:cornsilk, stroke:saddlebrown, color:saddlebrown, line-height:150%, margin:0px, padding:0px;
classDef Note fill:white, stroke:white, text-align:left;
%% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  YEAR_DOT(("Year<br>Dot"))

  %% ========== ========== ========== ========== ==========
  %% ~ 15000 BCE - PRE-HISTORIC
  %% ========== ========== ========== ========== ==========
  13000([from ~ 13000 BCE])
    NATUFIAN_CULTURE[Natufian Culture]
    click NATUFIAN_CULTURE "https://en.wikipedia.org/wiki/Natufian_culture" _blank

  10000([from ~ 10,000 BCE])
    PRE_POTTERY_NEOLITHIC_A[Pre-Pottery Neolithic A]
    click PRE_POTTERY_NEOLITHIC_A "https://en.wikipedia.org/wiki/Pre-Pottery_Neolithic_A" _blank

  9500([from ~ 9,500 BCE])
    GOBEKLI_TEPE[Göbekli Tepe]
    GOBEKLI_TEPE_NOTE[#151; early 'town' in south-eastern Anatolia, founded ~ 9500.]
    click GOBEKLI_TEPE "https://en.wikipedia.org/wiki/Göbekli_Tepe" _blank

  7500([from ~ 7,500 BCE])
    CATALHOYUK[Çatalhöyük]
    CATALHOYUK_NOTE[#151; early 'town' in southern Anatolia, with hundreds of people living in a cluster of mudbrick houses.]
    click CATALHOYUK "https://en.wikipedia.org/wiki/Çatalhöyük" _blank

  7000([from ~ 7,000 BCE])
    POTTERY_NEOLITHIC[Pottery Neolithic]
    click POTTERY_NEOLITHIC "https://en.wikipedia.org/wiki/Late_Neolithic" _blank

  6400([from ~ 6,400 BCE])
    YARNUKIAN_CULTURE[Yarmukian Culture]
    click YARNUKIAN_CULTURE "https://en.wikipedia.org/wiki/Yarmukian_culture" _blank

  6100([from ~ 6,100 BCE])
    HALAF[Halaf Culture]
    click HALAF "https://en.wikipedia.org/wiki/Halaf_culture" _blank

  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-13000-.-NATUFIAN_CULTURE
  YEAR_DOT-.-10000-.-PRE_POTTERY_NEOLITHIC_A
  YEAR_DOT-.-9500-.-GOBEKLI_TEPE~~~GOBEKLI_TEPE_NOTE
  YEAR_DOT-.-7500-.-CATALHOYUK~~~CATALHOYUK_NOTE
  YEAR_DOT-.-7000-.-POTTERY_NEOLITHIC
  YEAR_DOT-.-6400-.-YARNUKIAN_CULTURE
  YEAR_DOT-.-6100-.-HALAF

  class GOBEKLI_TEPE,CATALHOYUK Node
  class GOBEKLI_TEPE_NOTE,CATALHOYUK_NOTE Note
```

### Copper Age
```mermaid
%%{
  init: {
    'theme': 'forest',
    'themeVariables': {
      'fontSize':'8pt'

    }
  }
}%%
flowchart LR

classDef Node fill:cornsilk, stroke:saddlebrown, color:saddlebrown, line-height:150%, margin:0px, padding:0px;
classDef Note fill:white, stroke:white, text-align:left;
%% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  YEAR_DOT(("Year<br>Dot"))

  5500([from ~ 5,500 BCE])
    UBAID_PERIOD[Ubaid Period]
    click UBAID_PERIOD "https://en.wikipedia.org/wiki/Ubaid_period" _blank

    SUMER[Sumer]
    SUMER_NOTE[#151; the earliest known civilization in southern Mesopotamia, and where Cuneiform was invented.]
    click SUMER "https://en.wikipedia.org/wiki/Sumer" _blank

    ERIDU[Eridu]
    ERIDU_NOTE[#151; 'sumerian' city, founded ~ 5,500 BCE.]
    click ERIDU "https://en.wikipedia.org/wiki/Eridu" _blank

    URUK[Uruk]
    URUK_NOTE[#151; 'sumerian' city founded ~ 5,000 BCE]
    click URUK "https://en.wikipedia.org/wiki/Uruk" _blank

    INANNA[Inanna]
    INANNA_NOTE[#151; the patron goddess of the Eanna temple in Uruk]
    click INANNA "https://en.wikipedia.org/wiki/Inanna" _blank

    2900_1([~ 2,900 BCE])
    GILGAMESH[Gilgamesh]
    GILGAMESH_NOTE[#151; King of Uruk]
    click GILGAMESH "https://en.wikipedia.org/wiki/Gilgamesh" _blank

  4000([from ~ 4,000 BCE])
    URUK_PERIOD[Uruk Period]
    click URUK_PERIOD "https://en.wikipedia.org/wiki/Uruk_period" _blank

    URUK_SUMER[Sumer]
    click URUK_SUMER "https://en.wikipedia.org/wiki/Sumer" _blank

    UR[Ur]
    UR_NOTE[#151; 'sumerian' city founded ~ 3,800 BCE]
    click UR "https://en.wikipedia.org/wiki/Ur" _blank

  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-5500-.-UBAID_PERIOD
                    UBAID_PERIOD-.-SUMER--oSUMER_NOTE
                                   SUMER-.-ERIDU~~~ERIDU_NOTE
                                   SUMER-.-URUK--oURUK_NOTE
                                           URUK-.-INANNA~~~INANNA_NOTE
                                           URUK-.-2900_1-.-GILGAMESH~~~GILGAMESH_NOTE

  YEAR_DOT-.-4000-.-URUK_PERIOD-.-URUK_SUMER
                                  %%URUK-.-INANNA~~~INANNA_NOTE
                                  %%URUK-.-GILGAMESH~~~GILGAMESH_NOTE

                                  URUK_SUMER-.-UR~~~UR_NOTE
                                  URUK_SUMER-.-CUNEIFORM~~~CUNEIFORM_NOTE

  class ERIDU,URUK,INANNA,GILGAMESH,UR,CUNEIFORM Node
  class SUMER_NOTE,ERIDU_NOTE,URUK_NOTE,INANNA_NOTE,GILGAMESH_NOTE,UR_NOTE,CUNEIFORM_NOTE Note
```
