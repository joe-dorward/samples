In the context of delivering technical documentation for a technical audience, the software concept of 'contracts' is root idea of a useful metaphor for the efficient delivery of that technical documentation - in that metaphor:
- The technical writer is a *server*
- The client is a *client*

For the *server* to deliver useful documentation, the *client* must provide the *server* with ...

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
  1(("1")):::Number
  SERVER_01([&nbsp;Server&nbsp;]):::User
  %%SERVER_01_NOTE["The <i>Server</i> does not do magic<br/>Documentation is a co=creative process<br/>Sub-optimal input results in sub-optimal output"]:::Note
  SERVER_01_NOTE["The <i>Server</i> does not do magic, technical documentation is a co=creative process"]:::Note

  SERVER_01-.-
  1-.-o
  SERVER_01_NOTE


  %%SUB_OPTIMAL_INPUT["Input<br/>(sub-optimal)"]:::Entity
  %%SUB_OPTIMAL_INPUT-->SERVER_01
  %%SERVER_01<--SUB_OPTIMAL_INPUT

  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------

CLIENT_01([&nbsp;Client&nbsp;]):::User
