```mermaid
%%{init: { "theme":"forest" } }%%
flowchart TD
  classDef Start fill:cornsilk, stroke:red, font-family:verdana, font-size:9pt;
  classDef Verb fill:aliceblue, color:red, stroke:dodgerblue, font-family:verdana, font-size:9pt, padding:0px 4px;
  classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, font-size:8pt, text-align:left, padding:0px 4px;


  LONGER_TERM_ROLES("Longer-term Roles")
  TO_1("To")
  TRANSITION("Transition")
  TO_2("To")
  THE_NEED("The Need")
  I_FEEL(("I Feel")):::Start

  class TO_1,TO_2 Verb;

  LONGER_TERM_ROLES-.-TO_1-.-TRANSITION-.-TO_2-.-THE_NEED-.-
  I_FEEL-.-I_BELIEVE
  %% ----------

  SELF_SERVICE("Self-service")
  COMPONENTISED("Componentised")
  REUSABLE("Reusable")

  CONTENT_1("Content")

  SHOULD_BE_1("should be")
  THAT_1("that")

  I_BELIEVE(("I Believe")):::Start

  class SHOULD_BE_1,THAT_1 Verb;

  SELF_SERVICE-.-SHOULD_BE_1-.-CONTENT_1-.-THAT_1-.-I_BELIEVE
  COMPONENTISED-.-SHOULD_BE_1
  REUSABLE-.-SHOULD_BE_1

  %% ---------- ---------- ---------- ---------- ----------
  BAD_THING("'Bad Thing'")
  IS_A_1("is a")
  CONTENT_2("Content")
  MARKED_DOWN("marked down")

  GOOD_THING("'Good Thing'")
  IS_A_2("is a")
  CONTENT_3("Content")
  MARKED_UP("marked up")

  BAD_THING-.-IS_A_1-.-CONTENT_2-.-MARKED_DOWN-.-THAT_1
  GOOD_THING-.-IS_A_2-.-CONTENT_3-.-MARKED_UP-.-THAT_1

  class MARKED_DOWN,IS_A_1,MARKED_UP,IS_A_2 Verb;
  %% ========== ========== ========== ========== ==========
  I_LOVE(("I Love")):::Start

  %%I_BELIEVE-.-I_LOVE
  %%  ========== ========== ========== ========== ==========
  WORKING_AT_THE("working at the")
  PLATFORM_LEVEL("Platform Level")
  API_LEVEL("API Level")
  LOVE_KNOWING_NUTS_AND_BOLTS["I love knowing where<br/>the nuts and bolts go"]

  class WORKING_AT_THE Verb;
  class LOVE_KNOWING_NUTS_AND_BOLTS Note;

  I_LOVE-.-
  WORKING_AT_THE-.-PLATFORM_LEVEL-.-LOVE_KNOWING_NUTS_AND_BOLTS
  WORKING_AT_THE-.-API_LEVEL-.-LOVE_KNOWING_NUTS_AND_BOLTS
  %% ---------- ---------- ---------- ---------- ----------
  CREATING("creating")
  CONTENT_4("Content")
  THAT_HELPS("that helps")
  PEOPLE("People")
  DO_KNOW_UNDERSTAND["do, know, or understand"]

  class CREATING,THAT_HELPS Verb;
  class DO_KNOW_UNDERSTAND Note;

  I_LOVE-.-CREATING-.-CONTENT_4-.-THAT_HELPS-.-PEOPLE-.-DO_KNOW_UNDERSTAND
  %% ---------- ---------- ---------- ---------- ----------
  WRITING("writing")
  WORKING_CODE("Working Code")
  HELPS_ME_UNDERSTAND["it helps me understand"]
  COMPLEX_DOMAINS("Complex Domains")

  class WRITING Verb;
  class HELPS_ME_UNDERSTAND Note;

  I_LOVE-.-WRITING-.-WORKING_CODE-.-HELPS_ME_UNDERSTAND-.-COMPLEX_DOMAINS
  %% ---------- ---------- ---------- ---------- ----------
  GETTING("getting")
  FEEDBACK("Feedback")
  FROM("from")
  DEVELOPERS("Developers")
  HELPS_ME_WRITE_BETTER[it helps me write better]
  CODE_EXAMPLES("Code Examples")

  class GETTING,FROM Verb;
  class HELPS_ME_WRITE_BETTER Note;

  I_LOVE-.-GETTING-.-FEEDBACK-.-FROM-.-DEVELOPERS-.-HELPS_ME_WRITE_BETTER-.-CODE_EXAMPLES
  %% ---------- ---------- ---------- ---------- ----------
  WORKING_WITH("working with")
  DITA_XML("DITA XML")
  IT_FACILITATES("it facilitates")
  CONTENT_COMPONENTISATION("Content<br/>Componentisation")
  CONTENT_REUSE("Content Reuse")

  class WORKING_WITH,IT_FACILITATES Verb;

  I_LOVE-.-WORKING_WITH-.-DITA_XML-.-
  IT_FACILITATES-.-CONTENT_COMPONENTISATION
  IT_FACILITATES-.-CONTENT_REUSE

  WORKING_WITH-.-
  OPEN_API_SPECIFICATION("OpenAPI<br/>Specification")
  %%  ========== ========== ========== ========== ==========
  %%ID_LIKE_TO(("I'd Like To")):::Start
  %%TRANSITION("Transition")

  %%ID_LIKE_TO-.-TRANSITION
  %%  ========== ========== ========== ========== ==========
  I_BELIEVE-.-I_LOVE

```

