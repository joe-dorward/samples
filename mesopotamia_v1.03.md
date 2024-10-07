## Mesopotamia
At some point in time, our ancestors began moving about the landscape less and dragging all 'their stuff' with them when they went.
That appears to have happened first in Mesopotamia, when Northern Europe was still deep in the Ice Age more than ten-thousand years ago (but don't quote me on that).

If you'd thought about the name a little, you would likely have realised that _meso_ means _between_, and that _pot_ likely has the same meaning that it has in _potable_ - and - that would be a good guess. 
Mesopotamia, rather than being a country (in any sense of the word) is the name applied to the geographical area between, and surrounding the
[Tigris](https://en.wikipedia.org/wiki/Tigris) and [Euphrates](https://en.wikipedia.org/wiki/Euphrates).

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
  %%13000([from ~ 13000 BCE])
    %%NATUFIAN_CULTURE[Natufian Culture]
    %%click NATUFIAN_CULTURE "https://en.wikipedia.org/wiki/Natufian_culture" _blank

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

  COPPER_FROM([from ~ 6,000 BCE])
  COPPER_DESCRIPTION[Copper Age]
  COPPER_TO([to ~ 3,500 BCE])

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
    GILGAMESH_NOTE[#151; from ~ 2,900, the king of Uruk]
    click GILGAMESH "https://en.wikipedia.org/wiki/Gilgamesh" _blank

  4000([from ~ 4,000 BCE])
    URUK_PERIOD[Uruk Period]
    click URUK_PERIOD "https://en.wikipedia.org/wiki/Uruk_period" _blank







  %%3800([from ~ 3,800 BCE])
    UR[Ur]
    UR_NOTE[#151; 'sumerian' city founded ~ 3,800 BCE]
    click UR "https://en.wikipedia.org/wiki/Ur" _blank

  BRONZE_FROM([from ~ 3,300 BCE])
  BRONZE_DESCRIPTION[Bronze Age]
  BRONZE_TO([to ~ 1,200 BCE])

  %%3100([from ~ 3,100 BCE])
    CUNEIFORM[Cuneiform]
    CUNEIFORM_NOTE["#151; the earliest know writing system (invented by the Sumerians) ~ 3,100 BCE"]
    click CUNEIFORM "https://en.wikipedia.org/wiki/Cuneiform" _blank


  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  %%YEAR_DOT-.-13000-.-NATUFIAN_CULTURE
  YEAR_DOT-.-10000-.-PRE_POTTERY_NEOLITHIC_A
  YEAR_DOT-.-9500-.-GOBEKLI_TEPE~~~GOBEKLI_TEPE_NOTE
  YEAR_DOT-.-7500-.-CATALHOYUK~~~CATALHOYUK_NOTE
  YEAR_DOT-.-7000-.-POTTERY_NEOLITHIC
  YEAR_DOT-.-6400-.-YARNUKIAN_CULTURE
  YEAR_DOT-.-6100-.-HALAF

  YEAR_DOT~~~COPPER_FROM-.-COPPER_DESCRIPTION-.-COPPER_TO

  YEAR_DOT-.-5500-.-UBAID_PERIOD
                    UBAID_PERIOD-.-SUMER~~~SUMER_NOTE
                                   SUMER-.-ERIDU~~~ERIDU_NOTE
                                   SUMER-.-URUK--oURUK_NOTE
                                           URUK-.-INANNA~~~INANNA_NOTE
                                           URUK-.-2900_1-.-GILGAMESH~~~GILGAMESH_NOTE

  YEAR_DOT-.-4000-.-URUK_PERIOD
                                  %%URUK-.-INANNA~~~INANNA_NOTE
                                  %%URUK-.-GILGAMESH~~~GILGAMESH_NOTE

                    URUK_PERIOD-.-UR~~~UR_NOTE

                    URUK_PERIOD-.-CUNEIFORM~~~CUNEIFORM_NOTE

  YEAR_DOT~~~BRONZE_FROM-.-BRONZE_DESCRIPTION-.-BRONZE_TO

  class GOBEKLI_TEPE,CATALHOYUK,ERIDU,URUK,INANNA,GILGAMESH,UR,CUNEIFORM Node
  class GOBEKLI_TEPE_NOTE,CATALHOYUK_NOTE,SUMER_NOTE,ERIDU_NOTE,URUK_NOTE,INANNA_NOTE,GILGAMESH_NOTE,UR_NOTE,CUNEIFORM_NOTE Note



  %% ========== ========== ========== ========== ==========
  %% 3100 BCE PROTO-ELAMITE
  %% ========== ========== ========== ========== ==========
  3100([from ~ 3,100 BCE])
    PROTO_ELAMITE_PERIOD(Proto-Elamite Period)
    %%PROTO_ELAMITE_PERIOD_NOTE[#151; ]
    click PROTO_ELAMITE_PERIOD "https://en.wikipedia.org/wiki/Proto-Elamite_(period)" _blank



  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-3100-.-PROTO_ELAMITE_PERIOD

  %% ========== ========== ========== ========== ==========
  %% 3200 BCE ELAM
  %% ========== ========== ========== ========== ==========
  3200([from ~ 3,200 BCE])
    ELAM[Elam]
    click ELAM "https://en.wikipedia.org/wiki/Elam" _blank

    SUSA[Susa]
    SUSA_NOTE[#151; proto-elamite city founded ~ 4,000 BCE]
    click SUSA "https://en.wikipedia.org/wiki/Susa" _blank
    
  YEAR_DOT-.-3200-.-ELAM-.-SUSA~~~SUSA_NOTE

  class ELAM,SUSA Node
  class SUSA_NOTE Note
  %% ========== ========== ========== ========== ==========
  %% 3000 BCE & ASSYRIA
  %% ========== ========== ========== ========== ==========
  2900([from ~ 2,900 BCE])
    EARLY_DYNASTIC_PERIOD(Early Dynastic Period)
    click EARLY_DYNASTIC_PERIOD "https://en.wikipedia.org/wiki/Early_Dynastic_Period_(Mesopotamia)" _blank
    EARLY_DYNASTIC_PERIOD_NOTE[#151; characterized by the existence of many city-states]

    ASSUR_01[Aššur]
    ASSUR_01_NOTE[#151; 'assyrian' city founded ~ 2025 BCE]
    click ASSUR_01 "https://en.wikipedia.org/wiki/Assur" _blank

  2334([from ~ 2,334 BCE])
    AKKADIAN_EMPIRE[Akkadian Empire]
    click AKKADIAN_EMPIRE "https://en.wikipedia.org/wiki/Akkadian_Empire" _blank

    AKKAD[Akkad]
    AKKAD_NOTE["#151; the capital city of the Akkadian Empire (location unknown)"]

    SARGON_OF_AKKAD[Sargon of Akkad]
    SARGON_OF_AKKAD_NOTE[#151; the first ruler of the Akkadian Empire, known for his conquests of the Sumerian city-states]

  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-2900-.-EARLY_DYNASTIC_PERIOD--oEARLY_DYNASTIC_PERIOD_NOTE
                    EARLY_DYNASTIC_PERIOD-.-ASSUR_01~~~ASSUR_01_NOTE

  YEAR_DOT-.-2334-.-AKKADIAN_EMPIRE
                    AKKADIAN_EMPIRE-.-AKKAD--oAKKAD_NOTE
                                      AKKAD-.-SARGON_OF_AKKAD~~~SARGON_OF_AKKAD_NOTE

  class ASSUR_01,AKKAD,SARGON_OF_AKKAD Node
  class EARLY_DYNASTIC_PERIOD_NOTE,ASSUR_01_NOTE,AKKAD_NOTE,SARGON_OF_AKKAD_NOTE Note

  %% ========== ========== ========== ========== ==========
  %% 2000 BCE & BABYLONIA
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

  %%linkStyle 24,35,41 stroke:darkseagreen, stroke-width:3px;
  %% ========== ========== ========== ========== ==========
  %% ASSYRIAN EMPIRE
  %% ========== ========== ========== ========== ==========
  1400([from ~ 1,400 BCE])
    ASSYRIAN_EMPIRE[Assyrian Empire]
    ASSYRIAN_EMPIRE_NOTE[#151; an empire emerges from ~ 1,400 BCE]
    click ASSYRIAN_EMPIRE "https://en.wikipedia.org/wiki/Assyria" _blank

    IRON_FROM([from ~ 1,200 BCE])
    IRON_DOT_1(["&nbsp;"])
    IRON_DOT_2(["&nbsp;"])
    IRON_DESCRIPTION([Iron Age])
    IRON_DOT_3(["&nbsp;"])
    IRON_DOT_4(["&nbsp;"])
    IRON_TO([to ~ 550 BCE])

    NINEVEH[Nineveh]
    NINEVEH_NOTE["#151; founded (as early as) ~ 6,000 BCE, and the Assyrian capital from ~ 705 BCE"]
    ROYAL_LION_HUNT_NOTE[#151; the royal lion hunt reliefs in the British Museum are from Nineveh]

    TAYLOR_PRISM{{Taylor Prism}}
    TAYLOR_PRISM_NOTE["#151; a clay prisim (in the British Museum), recording the 'annals of Sennacherbi', dating to 691 BCE"]
    click TAYLOR_PRISM "https://en.wikipedia.org/wiki/Sennacherib's_Annals" _blank

    ASHURBANIPAL[Ashurbanipal]
    ASHURBANIPAL_NOTE[#151; Assyrian king, from ~ 669 BCE]
    click ASHURBANIPAL "https://en.wikipedia.org/wiki/Ashurbanipal" _blank

  653_1([653 BCE])
  653_2([653 BCE])
    BATTLE_OF_ULAI[Battle of Ulai]
    BATTLE_OF_ULAI_NOTE["#151; the decisive battle between the Assyrians (Ashurbanipal) and Elamites (Teumman). The battle is also known as the Battle of Til-Tuba"]
    click BATTLE_OF_ULAI "https://en.wikipedia.org/wiki/Battle_of_Ulai" _blank
  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-1400-.-ASSYRIAN_EMPIRE--oASSYRIAN_EMPIRE_NOTE
                    ASSYRIAN_EMPIRE-.-TAYLOR_PRISM~~~TAYLOR_PRISM_NOTE
                    ASSYRIAN_EMPIRE-.-ASHURBANIPAL~~~ASHURBANIPAL_NOTE
                    ASSYRIAN_EMPIRE-.-NINEVEH--oNINEVEH_NOTE
                                      NINEVEH--oROYAL_LION_HUNT_NOTE

                                      ASHURBANIPAL-.-653_1-.-BATTLE_OF_ULAI~~~BATTLE_OF_ULAI_NOTE

  SUSA-.-653_2-.-BATTLE_OF_ULAI

  YEAR_DOT~~~IRON_FROM---IRON_DOT_1---IRON_DOT_2---IRON_DESCRIPTION---IRON_DOT_3---IRON_DOT_4---IRON_TO
  %%YEAR_DOT-.-653-.-BATTLE_OF_ULAI~~~BATTLE_OF_ULAI_NOTE

  class NINEVEH,ASHURBANIPAL,BATTLE_OF_ULAI Node;
  class ASSYRIAN_EMPIRE_NOTE,TAYLOR_PRISM_NOTE,NINEVEH_NOTE,ROYAL_LION_HUNT_NOTE,ASHURBANIPAL_NOTE,BATTLE_OF_ULAI_NOTE Note

  %% ========== ========== ========== ========== ==========
  %% NEO-BABYLONIAN EMPIRE
  %% ========== ========== ========== ========== ==========
  626([from ~ 626 BCE])
    NEO_BABYLONIAN_EMPIRE[Neo-Babylonian Empire]
    click NEO_BABYLONIAN_EMPIRE "https://en.wikipedia.org/wiki/Neo-Babylonian_Empire" _blank

    NEBUCHADNEZZAR_II[Nebuchadnezzar II]
    NEBUCHADNEZZAR_II_NOTE[#151; Babylonian king, from ~ 605 BCE]
    click NEBUCHADNEZZAR_II "https://en.wikipedia.org/wiki/Nebuchadnezzar_II" _blank

    %%597([from ~ 597 BCE])
    597([597 BCE])
    SEIGE_OF_JERUSALEM[Seige of Jerusalem]

    BABYLONIAN_CAPTIVITY[Babylonian captivity]
    BABYLONIAN_CAPTIVITY_NOTE[#151; forcible relocation of Judeans to Babylonia by Nebuchadnezzar II]
    click BABYLONIAN_CAPTIVITY "https://en.wikipedia.org/wiki/Babylonian_captivity" _blank

  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-626-.-NEO_BABYLONIAN_EMPIRE
                   NEO_BABYLONIAN_EMPIRE-.-NEBUCHADNEZZAR_II~~~NEBUCHADNEZZAR_II_NOTE

                                           NEBUCHADNEZZAR_II-.-597-.-SEIGE_OF_JERUSALEM-.-BABYLONIAN_CAPTIVITY~~~BABYLONIAN_CAPTIVITY_NOTE
  %%YEAR_DOT-.-597-.-SEIGE_OF_JERUSALEM-.-BABYLONIAN_CAPTIVITY~~~BABYLONIAN_CAPTIVITY_NOTE

  class NEBUCHADNEZZAR_II,SEIGE_OF_JERUSALEM,BABYLONIAN_CAPTIVITY,BATTLE_OF_OPIS Node;
  class NEBUCHADNEZZAR_II_NOTE,BATTLE_OF_OPIS_NOTE,BABYLONIAN_CAPTIVITY_NOTE Note
  %% ========== ========== ========== ========== ==========
  %% PERSIAN EMPIRE
  %% ========== ========== ========== ========== ==========
  550([from ~ 550 BCE])
    PERSIAN_EMPIRE[Persian Empire]
      CYRUS_THE_GREAT[Cyrus the Great]
      CYRUS_CYLINDER{{Cyrus Cylinder}}
      CYRUS_CYLINDER_NOTE["#151; after 539 BCE, a clay cylinder (foundational deposit in Babylon)"]

    PERSEPOLIS[Persepolis]
    PERSEPOLIS_NOTE[#151; the earliest parts date from ~ 515 BCE]

  %%539([from ~ 539 BCE])
    539([539 BCE])
    BATTLE_OF_OPIS[Battle of Opis]
    BATTLE_OF_OPIS_NOTE["#151; the decisive battle between the Persians (Cyrus the Great) and Babylonians (Nabonidus)"]
    click BATTLE_OF_OPIS "https://en.wikipedia.org/wiki/Battle_of_Opis" _blank
  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  YEAR_DOT-.-550-.-PERSIAN_EMPIRE
                   PERSIAN_EMPIRE-.-CYRUS_THE_GREAT
                                    CYRUS_THE_GREAT-.-539-.-BATTLE_OF_OPIS~~~BATTLE_OF_OPIS_NOTE
                                    CYRUS_THE_GREAT-.-CYRUS_CYLINDER~~~CYRUS_CYLINDER_NOTE

                   PERSIAN_EMPIRE-.-PERSEPOLIS~~~PERSEPOLIS_NOTE

  %%YEAR_DOT-.-539-.-BATTLE_OF_OPIS~~~BATTLE_OF_OPIS_NOTE

  class PERSEPOLIS,CYRUS_THE_GREAT,CYRUS_CYLINDER,BATTLE_OF_OPIS Node;
  class CYRUS_CYLINDER_NOTE,PERSEPOLIS_NOTE,BATTLE_OF_OPIS_NOTE Note
  %% ---------- ---------- ---------- ---------- ----------
  classDef KeyDate fill:black, color:white;
  classDef Age fill:seagreen, color:honeydew;
  classDef Clay fill:peachpuff, stroke:darkred, color:darkred;

  class 2900_1,539,597,653_1,653_2 KeyDate;
  class TAYLOR_PRISM,CYRUS_CYLINDER Clay;
  class COPPER_FROM,COPPER_TO,BRONZE_FROM,BRONZE_TO,IRON_FROM,IRON_TO Age

  linkStyle 70 stroke:forestgreen, stroke-width:5px;
```
