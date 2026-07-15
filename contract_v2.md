```mermaid
flowchart LR

  %% define styles
  classDef User fill:#cde498, stroke:forestgreen, color:forestgreen;
  classDef Number fill:crimson, color:cornsilk, stroke:firebrick, font-family:verdana, font-size:16pt, padding:10px;
  classDef Button fill:green, color:white;
  classDef Note fill:transparent, stroke:white, text-align:left, font-size: 95%;

  classDef Backend fill:mediumseagreen, stroke:white, color:honeydew;
  classDef Entity fill:lightcyan, stroke:royalblue, color:royalblue;

  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  DOCUMENTATION_01@{ shape: docs, label: "Documentation"}
  class DOCUMENTATION_01 Entity
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  1(("1")):::Number
  WRITER_01([&nbsp;Writer&nbsp;]):::User
  WRITER_01_NOTE["The <i>Writer</i> does not do magic, technical documentation is a co=creative process"]:::Note

  WRITER_01-.-
  1-.-o
  WRITER_01_NOTE
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  2(("2")):::Number
  CLIENT_01([&nbsp;Client&nbsp;]):::User
  CLIENT_01_NOTE["The better the <i>Client</i> understands their requirements, the better the <i>Writer</i> can respond"]:::Note

  CLIENT_01-.-
  2-.-o
  CLIENT_01_NOTE

  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  DOCUMENTATION_01-.&nbsp;co-created&nbsp;.-
  WRITER_01

  DOCUMENTATION_01-.&nbsp;co-created&nbsp;.-
  CLIENT_01
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  3(("3")):::Number
  DIRECTION_01[&nbsp;Direction&nbsp;]:::Entity
  DIRECTION_01_NOTE["The <i>Writer</i> needs direction from someone with the strategic view of what documentation is required"]:::Note

  DIRECTION_01-.-
  3-.-o
  DIRECTION_01_NOTE

  CLIENT_01-.&nbsp;provides&nbsp;.-
  DIRECTION_01
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  4(("4")):::Number
  GUIDANCE_01[&nbsp;Guidance&nbsp;]:::Entity
  GUIDANCE_01_NOTE["The <i>Writer</i> needs guidance from someone with specific knowledge about each specific deliverable"]:::Note

  GUIDANCE_01-.-
  4-.-o
  GUIDANCE_01_NOTE

  CLIENT_01-.&nbsp;provides&nbsp;.-
  GUIDANCE_01
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  5(("5")):::Number
  VALUE_01[&nbsp;Value&nbsp;]:::Entity
  VALUE_01_NOTE["The <i>Writer</i> can add value without direction or guidance, but the less-support the <i>Writer</i> gets the less-efficient the process will be"]:::Note

  VALUE_01-.-
  5-.-o
  VALUE_01_NOTE

  DOCUMENTATION_01-.-
  VALUE_01
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  6(("6")):::Number
  PERSPECTIVE_01[&nbsp;Perspective&nbsp;]:::Entity
  PERSPECTIVE_01_NOTE["The <i>Writer</i> is helped by knowing more about what is going on around them (than one might imagine they need to know)"]:::Note

  PERSPECTIVE_01-.-
  6-.-o
  PERSPECTIVE_01_NOTE
```
