```mermaid
%%{init: { "theme":"forest"} }%%
flowchart LR
  classDef Compact font-family:verdana, font-size:7.5pt, text-align:left;
  classDef Variables fill:white, stroke:white, font-family:courier new, font-size:10pt;
  classDef Object fill:white, stroke:white, font-family:verdana, font-size:9pt;

  classDef Start fill:cornsilk, stroke:red, font-family:verdana, font-size:9.5pt;

  classDef Verb fill:aliceblue, color:red, stroke:dodgerblue, font-family:verdana, font-size:9pt;

I_LOVE["I Love"]:::Start

CODE("Code")
DITA_XML("DITA XML")
BETTER_CODE_EXAMPLES("Better Code Examples")
CONTENT("Content")
CONTENT_REUSE("Content Reuse")
DEVELOPERS("Developers")
FEEDBACK("Feedback")
OPEN_API_SPECIFICATION("OpenAPI<br/>Specification")
PEOPLE("People")
PLATFORM_LEVEL("Platform Level")
API_LEVEL("API Level")

DO_KNOW_UNDERSTAND["`*do, know, or understand*`"]
style DO_KNOW_UNDERSTAND text-align:left

COMPLEX_DOMAINS("Complex Domains")
%% DOING ==========

CREATING("creating")
ENCOURAGES("encourages")
EXPLAINING("explaining")
GETTING("getting")
FROM("from")
LEARNING("learning")
WORKING_AT_THE("working at the")
WORKING_WITH("working with")
WRITING("writing")

THAT_HELPS("that helps")

class CREATING,ENCOURAGES,EXPLAINING,GETTING,FROM,LEARNING,WORKING_AT_THE,WORKING_WITH,WRITING,THAT_HELPS Verb;



%% NOTES ==========
classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, font-size:8pt, text-align:left;

UNDERSTAND["it helps me understand"]

HELPS_ME_WRITE[it helps me write]


class UNDERSTAND,HELPS_ME_WRITE Note;
%% CONNECTING ==========

EXPLAINING-.-I_LOVE
LEARNING-.-I_LOVE

CONTENT_REUSE-.-
ENCOURAGES-.-
DITA_XML-.-WORKING_WITH

OPEN_API_SPECIFICATION-.-
WORKING_WITH-.-I_LOVE

API_LEVEL-.-WORKING_AT_THE
PLATFORM_LEVEL-.-WORKING_AT_THE-.-I_LOVE

I_LOVE-.-CREATING-.-CONTENT-.-THAT_HELPS-.-PEOPLE-.-DO_KNOW_UNDERSTAND

I_LOVE-.-WRITING-.-CODE-.-UNDERSTAND-.-COMPLEX_DOMAINS

I_LOVE-.-GETTING-.-FEEDBACK-.-FROM-.-DEVELOPERS-.-HELPS_ME_WRITE-.-BETTER_CODE_EXAMPLES



```

```mermaid
flowchart




CONTENT_COMPONENTS("Content Components")
CONTENT_REUSE("Content Reuse")

SELF_SERVICE("Self-Service")


%%I_LOVE-."working at the".-PLATFORM_API
%%I_LOVE-.-COMPLEXITY

%%I_LOVE-.-EXPLAINING
```
