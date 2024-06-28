<MessageCard type='proactive'><p>An Extraction, is a structured JSON object that is
created by Sage Ai from an uploaded scanned or photographed document.</p>
<p>Sage Ai can only return an Extraction with the key-values for the data it can
'read' and / or infer, and that will depend on many factors (mostly) related
to the structure, organisation, and quality of the scanned or photographed
document.</p></MessageCard>

The ability of Sage Ai to infer the Extraction key-values from a scanned or photographed
document is powerful.

<MessageCard type='proactive'><p>A Field Prediction, is the schema underlying the key-values
extracted from an uploaded scanned or photographed document.</p>
<p>It represents both the actual value extracted by Sage Ai, and the confidence level of
Sage Ai, that the value is correct.</p></MessageCard>

|FieldPrediction (properties)||
|-|-|
|`value`|The actual data-value of the extracted key|
|`confidence`|The confidence level of Sage Ai that the value of the field is correct, with 0 (being lowest), and 1 (being highest)|
|`tagged`|`True` if Sage Ai 'thinks' that the value of the field is probably incorrect - otherwise `False`|

In the Extraction fragment (below left), you can see that Sage Ai is only `0.574`
confident that the `name` value is correct. 

In the Extraction fragment (below right), you can see that Sage Ai is `1`
confident that the `document_language` value is correct. 

<SideBySide leftRatio={1} rightRatio={1} includeTopPadding={false}>
<div>
```json:extraction
"name": {
    "value": "Bracknell Art Supplies",
    "confidence": 0.574,
    "tagged": false
},
```
</div>
<div>
```json:extraction
"document_language": {
    "value": "eng",
    "confidence": 1.0,
    "tagged": false
},
```
</div>
</SideBySide>
