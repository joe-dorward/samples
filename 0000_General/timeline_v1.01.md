```mermaid
%%{init: { 'theme':'forest', 'themeVariables': { 'fontSize':'7' } }}%%
flowchart TD
    %% ========== ========== ========== ========== ==========
    13000([from ~ 13000 BCE])-.-NATUFIAN_[Natufian Culture]
    10000([from ~ 10,000 BCE])-.-PRE_POTTERY_NEOLITHIC_A[Pre-Pottery Neolithic A]
    9500([from ~ 9,500 BCE])-.-GOBEKLI_TEPE[Gobekli Tepe]
    7500([from ~ 7,500 BCE])-.-CATALHOYUK[Catalhoyuk]
    7000([from ~ 7,000 BCE])-.-POTTERY_NEOLITHIC[Pottery Neolithic]
    6400([from ~ 6,400 BCE])-.-YARNUKIAN["Yarnukian Culture"]
    5500([from ~ 5,500 BCE])-.-SUMER[Sumer] 
    5500_KISH([from ~ 5,500 BCE])-.-KISH[Kish]

    13000-.-
    10000-.-
    9500-.-
    7500-.-
    7000-.-
    6400-.-
    5500-.-
    5500_KISH
```

```mermaid
flowchart TD
  %%classDef When height:90px, valign:top, fill:black, color:white, stroke:black, font-family:verdana, font-size:12pt, padding:0px;
  %%classDef What fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, text-align:left, margin:8px;

  classDef When fill:black, color:white, stroke:black, font-size:8pt, height:35px, padding:0px, margin:0px;
  classDef What fill:cornsilk, stroke:saddlebrown, color:saddlebrown, text-align:left;

  13000("from ~ 13,000 BCE")
  10000("from ~ 10,000 BCE")
  9500("9,500 BCE")

  YOUNGER_DRYAS["Younger Dryas"]
  NATUFIAN["(1) Natufian Culture"]
  PPNA["(2) Pre-Pottery Neolithic A"]

  class YOUNGER_DRYAS,NATUFIAN,PPNA What;
  class 9500,10000,13000,10000 When;


  YOUNGER_DRYAS

  NATUFIAN-.-13000
  PPNA-.-10000

  13000-.-
  10000-.-
  9500
    



```
