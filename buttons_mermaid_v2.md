Some text...

```mermaid
  %%{
    init: {"flowchart": { "markdownAutoWrap":"false", "textWrap":"false", "wrappingWidth": "100%" }
    }
  }%%
  flowchart LR

  %% define styles
  classDef Button fill:lightcyan, stroke:royalblue, color:royalblue;
  classDef Note fill:transparent, stroke:white, text-align:left;
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_01[User Interface Layer]:::Button
  click BUTTON_01 "https://en.wikipedia.org/wiki/Main_Page" _blank

  BUTTON_01_NOTE["(Decoupled apps using Verso Design System)"]:::Note

  BUTTON_01-.-o
  BUTTON_01_NOTE
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------

  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------



```

More text...
