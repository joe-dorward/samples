Some text...

```mermaid
  flowchart LR

  %% define styles
  classDef Button fill:lightcyan, stroke:royalblue, color:royalblue;
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_ONE[Button One]:::Button
  click BUTTON_ONE "https://en.wikipedia.org/wiki/Main_Page" _blank
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_TWO[Button Two]:::Button
  click BUTTON_TWO "[https://en.wikipedia.org/wiki/Main_Page](https://www.hastings.gov.uk/coastlinebeaches/tidetables/)" _blank
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_THREE[Button Three]:::Button
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_FOUR[Button Four]:::Button
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_FIVE[Button Five]:::Button
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_ONE~~~
  BUTTON_TWO
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BUTTON_FOUR~~~
  BUTTON_FIVE
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------



```

More text...
