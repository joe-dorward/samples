```mermaid
%%{init: { "theme":"forest"} }%%
flowchart LR
  classDef Compact font-family:verdana, font-size:7.5pt, text-align:left;
  classDef Variables fill:white, stroke:white, font-family:courier new, font-size:10pt;
  classDef Object fill:white, stroke:white, font-family:verdana, font-size:9pt;

  classDef Start fill:cornsilk, stroke:red, font-family:verdana, font-size:9pt;

  classDef Verb fill:aliceblue, color:red, stroke:dodgerblue, font-family:verdana, font-size:9pt;


I_LOVE["I Love"]:::Start

CODE("Code")
BETTER_CODE_EXAMPLES("Better Code Examples")



CONTENT("Content")


DEVELOPERS("Developers")


FEEDBACK("Feedback")


DO_KNOW_UNDERSTAND["`*do, know, or understand*`"]
style DO_KNOW_UNDERSTAND text-align:left


%% DOING ==========

CREATING("creating")
GETTING("getting")
FROM("from")
WRITING("writing")

THAT_HELPS_PEOPLE("that helps
  people")

class CREATING,GETTING,FROM,WRITING,THAT_HELPS_PEOPLE Verb;



%% NOTES ==========
classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, font-size:8pt, text-align:left;

UNDERSTAND_DOMAIN["it helps me understand
  the domain better"]

HELPS_ME_WRITE[it helps me write]


class UNDERSTAND_DOMAIN,HELPS_ME_WRITE Note;
%% CONNECTING ==========

I_LOVE-.-CREATING-.-CONTENT-.-THAT_HELPS_PEOPLE-.-DO_KNOW_UNDERSTAND

I_LOVE-.-WRITING-.-CODE-.-UNDERSTAND_DOMAIN

I_LOVE-.-GETTING-.-FEEDBACK-.-FROM-.-DEVELOPERS-.-HELPS_ME_WRITE-.-BETTER_CODE_EXAMPLES



```

```mermaid
flowchart

I_LOVE-.getting.-FEEDBACK-.from.-DEVELOPERS-.that helps me
  create.-BETTER_CODE_EXAMPLES




PLATFORM_API("Platform / API level")
COMPLEXITY("Complexity")
CONTENT_COMPONENTS("Content Components")
CONTENT_REUSE("Content Reuse")

LEARNING("Learning")
SELF_SERVICE("Self-Service")
EXPLAINING("Explaining")

%%I_LOVE-."working at the".-PLATFORM_API
%%I_LOVE-.-COMPLEXITY
%%I_LOVE-.-LEARNING
%%I_LOVE-.-EXPLAINING
```
