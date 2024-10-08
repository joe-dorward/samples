## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went.
That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age more than ten-thousand years ago (but don't quote me on that).

If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. 
Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).

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
