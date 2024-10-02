## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went.
That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age about ten-to-fifteen thousand years ago (but don't quote me on that). 
If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. 
Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).

```mermaid
%%{
  init: {
    'theme': 'forest',
    'themeVariables': {
      'fontSize':'9pt'

    }
  }
}%%
flowchart LR

classDef Node fill:cornsilk, stroke:saddlebrown, color:saddlebrown, line-height:150%, margin:0px, padding:0px;
classDef Note fill:white, stroke:white, text-align:left;

%% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  YEAR_DOT(("Year Dot"))

  %% ========== ========== ========== ========== ==========
  %% ~ 15000 BCE - PRE-HISTORIC
  %% ========== ========== ========== ========== ==========
  13000([from ~ 13000 BCE])
    NATUFIAN[Natufian Culture]
    click NATUFIAN "https://en.wikipedia.org/wiki/Natufian_culture" _blank

  10000([from ~ 10,000 BCE])
    PRE_POTTERY_NEOLITHIC_A[Pre-Pottery Neolithic A]
    click PRE_POTTERY_NEOLITHIC_A "https://en.wikipedia.org/wiki/Pre-Pottery_Neolithic_A" _blank

  9500([from ~ 9,500 BCE])
    GOBEKLI_TEPE[Göbekli Tepe]
    click GOBEKLI_TEPE "https://en.wikipedia.org/wiki/Göbekli_Tepe" _blank

  7500([from ~ 7,500 BCE])
    CATALHOYUK[Çatalhöyük]
    CATALHOYUK_NOTE[#151; earliest known 'town', hundreds of people living in a cluster of mudbrick houses.]
    click CATALHOYUK "https://en.wikipedia.org/wiki/Çatalhöyük" _blank

  6400([from ~ 6,400 BCE])
    YARNUKIAN[Yarmukian Culture]
    click YARNUKIAN "https://en.wikipedia.org/wiki/Yarmukian_culture" _blank

  6100([from ~ 6,100 BCE])
    HALAF[Halaf Culture]
    click HALAF "https://en.wikipedia.org/wiki/Halaf_culture" _blank

  5500([from ~ 5,500 BCE])
    UBAID_PERIOD[Ubaid Period]
    click UBAID_PERIOD "https://en.wikipedia.org/wiki/Ubaid_period" _blank

    SUMER[Sumer]
    SUMER_NOTE[#151; the earliest known civilization in southern Mesopotamia, and where Cuneiform was invented.]
    click SUMER "https://en.wikipedia.org/wiki/Sumer" _blank

  5400([from ~ 5,400 BCE])
    ERIDU[Eridu]
    ERIDU_NOTE[#151; 'sumerian' city.]
    click ERIDU "https://en.wikipedia.org/wiki/Eridu" _blank

  4000([from ~ 4,000 BCE])
    URUK_PERIOD[Uruk Period]
    click URUK_PERIOD "https://en.wikipedia.org/wiki/Uruk_period" _blank

    URUK[Uruk]
    URUK_NOTE[#151; 'sumerian' city founded ~ 5,000 BCE]
    click URUK "https://en.wikipedia.org/wiki/Uruk" _blank



  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  YEAR_DOT-.-13000-.-NATUFIAN
  YEAR_DOT-.-10000-.-PRE_POTTERY_NEOLITHIC_A
  YEAR_DOT-.-9500-.-GOBEKLI_TEPE
  YEAR_DOT-.-7500-.-CATALHOYUK~~~CATALHOYUK_NOTE
  YEAR_DOT-.-6400-.-YARNUKIAN
  YEAR_DOT-.-6100-.-HALAF

  YEAR_DOT-.-5500-.-UBAID_PERIOD
                    UBAID_PERIOD-.-SUMER~~~SUMER_NOTE
                    UBAID_PERIOD-.-ERIDU~~~ERIDU_NOTE

  YEAR_DOT-.-4000-.-URUK_PERIOD
                    URUK_PERIOD-.-URUK~~~URUK_NOTE

  class GOBEKLI_TEPE,CATALHOYUK,SUMER,ERIDU Node
  class CATALHOYUK_NOTE,SUMER_NOTE,ERIDU_NOTE Note

  %% ========== ========== ========== ========== ==========
  %% 2000 & BABYLONIA
  %% ========== ========== ========== ========== ==========
  1894([from ~ 1,894 BCE])
    OLD_BABYLONIAN_EMPIRE[Old Babylonian Empire]
    click OLD_BABYLONIAN_EMPIRE "https://en.wikipedia.org/wiki/Old_Babylonian_Empire" _blank

    BABYLON[Babylon]
    BABYLON_NOTE[#151; earliest known reference from ~ 2,000 BCE]
    click BABYLON "https://en.wikipedia.org/wiki/Babylon" _blank

    HAMMURABI[Hammurabi]
    HAMMURABI_NOTE[#151; from ~ 1,810 BCE, the 6th king of Babylon]
    click HAMMURABI "https://en.wikipedia.org/wiki/Hammurabi" _blank

  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
    YEAR_DOT-.-1894-.-OLD_BABYLONIAN_EMPIRE
    OLD_BABYLONIAN_EMPIRE-.-BABYLON~~~BABYLON_NOTE
    OLD_BABYLONIAN_EMPIRE-.-HAMMURABI~~~HAMMURABI_NOTE

    class BABYLON,HAMMURABI Node;
    class BABYLON_NOTE,HAMMURABI_NOTE Note
