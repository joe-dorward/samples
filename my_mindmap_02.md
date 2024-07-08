```mermaid
%%{init: { "theme":"forest"} }%%
flowchart TD
  classDef Start fill:cornsilk, stroke:red, font-family:verdana, font-size:9pt;
  classDef Verb fill:aliceblue, color:red, stroke:dodgerblue, font-family:verdana, font-size:9pt;
  classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, font-size:8pt, text-align:left;

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

  %% ----------
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

  %% ==========
  I_LOVE(("I Love")):::Start

  I_BELIEVE-.-I_LOVE

  %% ---------- ---------- ---------- ---------- ----------
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
```

```mermaid
%%{init: { "theme":"forest"} }%%
flowchart TD
  classDef Compact font-family:verdana, font-size:7.5pt, text-align:left;
  classDef Variables fill:white, stroke:white, font-family:courier new, font-size:10pt;
  classDef Object fill:white, stroke:white, font-family:verdana, font-size:9pt;

  classDef Start fill:cornsilk, stroke:red, font-family:verdana, font-size:10pt;

  classDef Verb fill:aliceblue, color:red, stroke:dodgerblue, font-family:verdana, font-size:9pt;

I_LOVE(("I Love")):::Start
I_BELIEVE(("I Believe")):::Start

CODE("Code")
DITA_XML("DITA XML")
CODE_EXAMPLES("Code Examples")

SELF_SERVICE("Self-service")
COMPONENTISED("Componentised")
REUSABLE("Reusable")

CONTENT("Content")
CONTENT_2("Content")

CONTENT_COMPONENTS("Content<br/>Components")
CONTENT_REUSE("Content Reuse")
DEVELOPERS("Developers")
FEEDBACK("Feedback")
OPEN_API_SPECIFICATION("OpenAPI<br/>Specification")
PEOPLE("People")


PLATFORM_LEVEL("Platform Level")
API_LEVEL("API Level")


COMPLEX_DOMAINS("Complex Domains")
%% DOING ==========

CREATING("creating")
ENABLES("enables")
ENCOURAGES("encourages")
EXPLAINING("explaining")
GETTING("getting")
FROM("from")
LEARNING("learning")

SHOULD_BE("should be")
SHOULD_BE_2("should be")
THAT("that")

WORKING_AT_THE("working at the")
WORKING_WITH("working with")
WRITING("writing")

THAT_HELPS("that helps")

class CREATING,ENABLES,ENCOURAGES,EXPLAINING,GETTING,FROM,LEARNING,SHOULD_BE,SHOULD_BE_2,THAT,WORKING_AT_THE,WORKING_WITH,WRITING,THAT_HELPS Verb;



%% NOTES ==========
classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, font-size:8pt, text-align:left;

DO_KNOW_UNDERSTAND["do, know, or understand"]
HELPS_ME_UNDERSTAND["it helps me understand"]

HELPS_ME_WRITE_BETTER[it helps me write better]


class DO_KNOW_UNDERSTAND,HELPS_ME_UNDERSTAND,HELPS_ME_WRITE_BETTER Note;
%% CONNECTING ==========

EXPLAINING-.-I_LOVE
LEARNING-.-I_LOVE

CONTENT_COMPONENTS-.-
ENABLES-.-
DITA_XML

CONTENT_REUSE-.-
ENCOURAGES-.-
DITA_XML-.-WORKING_WITH

OPEN_API_SPECIFICATION-.-
WORKING_WITH-.-I_LOVE

API_LEVEL-.-WORKING_AT_THE
PLATFORM_LEVEL-.-WORKING_AT_THE-.-I_LOVE

I_LOVE-.-CREATING-.-CONTENT-.-THAT_HELPS-.-PEOPLE-.-DO_KNOW_UNDERSTAND

I_LOVE-.-WRITING-.-CODE-.-HELPS_ME_UNDERSTAND-.-COMPLEX_DOMAINS

I_LOVE-.-GETTING-.-FEEDBACK-.-FROM-.-DEVELOPERS-.-HELPS_ME_WRITE_BETTER-.-CODE_EXAMPLES

I_LOVE-.-I_BELIEVE

I_BELIEVE-.-THAT-.-CONTENT_2-.-SHOULD_BE-.-SELF_SERVICE
SHOULD_BE-.-COMPONENTISED
SHOULD_BE-.-REUSABLE

%% ---------- ---------- ---------- ---------- ----------
MARKED_DOWN("marked down")
CONTENT_3("Content")
IS_1("is")
LOW_RESOLUTION("Low Resolution")

MARKED_UP("marked up")
CONTENT_4("Content")
IS_2("is")
HIGH_RESOLUTION("High Resolution")

THAT-.-
MARKED_DOWN-.-CONTENT_3-.-IS_1-.-LOW_RESOLUTION
THAT-.-
MARKED_UP-.-CONTENT_4-.-IS_2-.-HIGH_RESOLUTION

class MARKED_DOWN,IS_1,MARKED_UP,IS_2 Verb;
```

