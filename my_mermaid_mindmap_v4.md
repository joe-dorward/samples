```mermaid
%%{init: { "theme":"forest" } }%%
flowchart TD
  classDef Start fill:crimson, color:cornsilk, stroke:firebrick, font-family:verdana, font-size:14pt, padding:10px;
  classDef Verb fill:aliceblue, color:royalblue, stroke:royalblue, font-family:verdana, padding:10px;
  classDef Adverb fill:whitesmoke, color:indigo, stroke:indigo, font-family:verdana, font-style:italic;
  classDef Adjective fill:ivory, color:darkred, stroke:darkred, font-family:verdana, line-height:18pt;
  classDef Note fill:cornsilk, stroke:saddlebrown, color:saddlebrown, font-family:verdana, text-align:left, margin:8px;

  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  I(("I")):::Start
  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  AM(("Am")):::Start

  CATEGORISATION_NOTE["Take a look at how MediaWiki&ensp;<br/>&ensp;categorisation works. It is<br/>&ensp;about structure and findability"]
  HIGHLY_AVAILABLE_NOTE["<b>Highly-available</b> implies that the<br/>&ensp;content<i>must be</i> online, that it's easy<br/>&ensp;to access, and that sought after<br/>&ensp;content is easy to find"]  
  HIGHLY_COLABORATIVE_NOTE["<b>Highly-collaborative</b> implies an<br/>&ensp;epectation that some users of the<br/>&ensp;content (not on the initial content<br/>&ensp;creation team) will make changes<br/>&ensp;without further permission"]

  class CATEGORISATION_NOTE,HIGHLY_AVAILABLE_NOTE,HIGHLY_COLABORATIVE_NOTE Note;

  CATEGORISATION("Categorisation")
  THAT_LEVERAGE("that leverage")
  CONTENT_SYSTEMS("Content Systems")
  HIGHLY_AVAILABLE("highly-available")
  HIGHLY_COLABORATIVE("highly-collaborative")
  CREATING_1("creating")
  INTERESTED_IN("interested in")

  class INTERESTED_IN,HIGHLY_AVAILABLE,HIGHLY_COLABORATIVE Adjective;
  class CREATING_1,THAT_LEVERAGE Verb;

  CATEGORISATION_NOTE-.-
  CATEGORISATION-.-
  THAT_LEVERAGE-.-
  CONTENT_SYSTEMS

  HIGHLY_AVAILABLE_NOTE-.-HIGHLY_AVAILABLE
  CONTENT_SYSTEMS-.-HIGHLY_AVAILABLE
  CONTENT_SYSTEMS-.-HIGHLY_COLABORATIVE
  HIGHLY_COLABORATIVE_NOTE-.-HIGHLY_COLABORATIVE

  HIGHLY_AVAILABLE-.-CREATING_1
  HIGHLY_COLABORATIVE-.-CREATING_1

  CREATING_1-.-
  INTERESTED_IN-.-
  AM-.-
  I
  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  FEEL(("Feel")):::Start

  DOMAIN("Domain")
  FOR_LONGER("for longer")
  COMPLEX_PROJECTS("Complex Projects")
  IN_A("in a")

  SINGLE_PROJECTS("Single Projects")
  LARGER_PROJECTS("Larger Projects")
  MORE("more")
  MORE_DEEPLY_INVOLVED("more deeply<br/>involved")

  TO_WORK_ON("to work on")
  FOR_LONGER("for longer")
  TO_WORK_ON("to work on")
  TO_GET("to get")
  THE_NEED("The Need")

  class TO_WORK_ON,TO_GET,IN_A Verb;
  class MORE,MORE_DEEPLY_INVOLVED Adverb;
  class FOR_LONGER,INVOLVED Adjective;

  FOR_LONGER-.-SINGLE_PROJECTS-.-TO_WORK_ON
  LARGER_PROJECTS-.-TO_WORK_ON
  COMPLEX_PROJECTS-.-MORE-.-TO_WORK_ON

  TO_WORK_ON-.-THE_NEED
  DOMAIN-.-IN_A-.-MORE_DEEPLY_INVOLVED-.-TO_GET-.-THE_NEED

  THE_NEED-.-
  FEEL-.-I
  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  BELIEVE(("Believe")):::Start

  SELF_SERVICE_NOTE("If people can't find what they<br/>&ensp;need by themselves, then the<br/>&ensp;content is not fit-for-purpose")
  COMPONENTISED_NOTE("To the paragraph, sentence,<br/>&ensp;word level - to facillitate<br/>&ensp;single-sourcing, and reuse")
  MARKED_DOWN_CONTENT_NOTE["<b>Marked-down</b> content is the<br/>&ensp;technical writing equivalent of<br/>&ensp;creating computer-code without<br/>&ensp;objects, methods, or functions"]
  MARKED_UP_CONTENT_NOTE["<b>Marked-up</b> content 'should be', by<br/>&ensp;definition, structured in the sense<br/>&ensp;of the Document Object Model - in<br/>&ensp;that it 'should be' that it 'should be'<br/>&ensp;a hierarchy of elements"]

  class SELF_SERVICE_NOTE,COMPONENTISED_NOTE,MARKED_DOWN_CONTENT_NOTE,MARKED_UP_CONTENT_NOTE Note;

  SELF_SERVICE("Self-service")
  COMPONENTISED("Componentised")
  REUSABLE("Reusable")
  SHOULD_BE_1("should be")
  CONTENT_1("Content")
  THAT_1("that")

  class SHOULD_BE_1,THAT_1 Verb;

  SELF_SERVICE_NOTE-.-SELF_SERVICE-.-SHOULD_BE_1
  COMPONENTISED_NOTE-.-COMPONENTISED-.-SHOULD_BE_1
  REUSABLE-.-SHOULD_BE_1

  SHOULD_BE_1-.-CONTENT_1-.-THAT_1

  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  BAD_THING("'bad thing'")
  IS_A_1("is a")
  MARKED_DOWN_CONTENT("Content")
  MARKED_DOWN("marked down")

  GOOD_THING("'good thing'")
  IS_A_2("is a")
  MARKED_UP_CONTENT("Content")
  MARKED_UP("marked up")

  class GOOD_THING,BAD_THING Adjective;
  class MARKED_DOWN,IS_A_1,MARKED_UP,IS_A_2 Verb;

  MARKED_DOWN_CONTENT_NOTE-.-BAD_THING-.-IS_A_1-.-MARKED_DOWN_CONTENT-.-MARKED_DOWN-.-THAT_1
  MARKED_UP_CONTENT_NOTE-.-GOOD_THING-.-IS_A_2-.-MARKED_UP_CONTENT-.-MARKED_UP-.-THAT_1
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  THAT_1-.-BELIEVE-.-I
  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  CAN(("Can")):::Start

  HAND_CODE("hand code")

  WEB_PAGES("Web Pages")
  USING_1("using")
  HTML("HTML")
  CSS("CSS")
  JAVASCRIPT("JavaScript")

  DATA_MODELS("Data Models")
  USING_2("using")
  XML("XML")
  TRANSFORMING_THEM_WITH("transforming<br/>them with")
  PYTHON("Python")
  XSLT("XSLT")

  class HAND_CODE,USING_1,USING_2,TRANSFORMING_THEM_WITH Verb;

  I-.-
  CAN-.-
  HAND_CODE-.-
  WEB_PAGES-.-
  USING_1

  USING_1-.-HTML
  USING_1-.-CSS
  USING_1-.-JAVASCRIPT

  HAND_CODE-.-
  DATA_MODELS-.-
  USING_2-.-
  XML-.-
  TRANSFORMING_THEM_WITH

  TRANSFORMING_THEM_WITH-.-PYTHON
  TRANSFORMING_THEM_WITH-.-XSLT

  %% ========== ========== ========== ========== ========== ========== ========== ========== ========== ==========
  LOVE(("Love")):::Start
  I-.-LOVE

  PLATFORM_LEVEL_NOTE["I love knowing where the<br/>&ensp;nuts and bolts go, and<br/>&ensp;what's connected to what"]

  WORKING_AT_THE("working at the")
  PLATFORM_LEVEL("Platform Level")
  API_LEVEL("API Level")

  class WORKING_AT_THE Verb;
  class PLATFORM_LEVEL_NOTE Note;

  LOVE-.-
  WORKING_AT_THE-.-PLATFORM_LEVEL-.-PLATFORM_LEVEL_NOTE
  WORKING_AT_THE-.-API_LEVEL-.-PLATFORM_LEVEL_NOTE
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  DO_KNOW_UNDERSTAND_NOTE["do, know, or understand"]

  CREATING("creating")
  CONTENT_4("Content")
  THAT_HELPS("that helps")
  PEOPLE("People")

  class CREATING,THAT_HELPS Verb;
  class DO_KNOW_UNDERSTAND_NOTE Note;

  LOVE-.-CREATING-.-CONTENT_4-.-THAT_HELPS-.-PEOPLE-.-DO_KNOW_UNDERSTAND_NOTE
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  HELPS_ME_UNDERSTAND_NOTE["it helps me to understand"]

  WRITING("writing")
  WORKING_CODE("Working Code")
  COMPLEX_DOMAINS("Complex Domains")

  class WRITING Verb;
  class HELPS_ME_UNDERSTAND_NOTE Note;

  LOVE-.-WRITING-.-WORKING_CODE-.-HELPS_ME_UNDERSTAND_NOTE-.-COMPLEX_DOMAINS
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  HELPS_ME_WRITE_BETTER_NOTE[it helps me develop better]

  GETTING("getting")
  FEEDBACK("Feedback")
  FROM("from")
  DEVELOPERS("Developers")

  CODE_EXAMPLES("Code Examples")

  class GETTING,FROM Verb;
  class HELPS_ME_WRITE_BETTER_NOTE Note;

  LOVE-.-GETTING-.-FEEDBACK-.-FROM-.-DEVELOPERS-.-HELPS_ME_WRITE_BETTER_NOTE-.-CODE_EXAMPLES
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
  WORKING_WITH("working with")
  DITA_XML("DITA XML")
  IT_FACILITATES("it facilitates")
  CONTENT_COMPONENTISATION("Content<br/>Componentisation")
  CONTENT_REUSE("Content Reuse")
  MACHINE_READING("Machine Reading")
  MACHINE_WRITING("Machine Writing")

  class WORKING_WITH,IT_FACILITATES Verb;

  LOVE-.-WORKING_WITH-.-DITA_XML-.-IT_FACILITATES

  IT_FACILITATES-.-CONTENT_COMPONENTISATION
  IT_FACILITATES-.-CONTENT_REUSE
  IT_FACILITATES-.-MACHINE_READING
  IT_FACILITATES-.-MACHINE_WRITING
  %% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------

```
