After getting an Extraction by calling the `/feed/results` endpoint, you may notice that
the data in the Extraction is not the same as the data on the scanned or photographed
document.

You can help Sage Ai learn, by creating a Feedback file from an Extraction, and then
sending that Feedback file to Sage Ai.

Know, that a Feedback file has a slightly different form than an Extraction.

Below left, is an edited example of an Extraction, highlighting the form of its `vendor`
key. Below right, an edited example of a Feedback file, also highlighting the form of
its `vendor` key. You will no-doubt see that the form of a Feedback file is only a minor
variation on the form of an Extraction.

<SideBySide leftRatio={1} rightRatio={1} includeTopPadding={false}>
<div>
```json:extraction
{
    "metadata": {
        "identifier": "01896a5c-6c8f-4c2b-b10e-086cd6..."
    },
    "extraction": {
        &#8942;
        "vendor": {
            "address": {
                "value": "24 Chalk Street Basingstoke...",
                "confidence": 0.893,
                "tagged": false
            },
            "country": {
                "value": "GB",
                "tagged": false
            },
            "email": {
                "value": "buying@bracknellartsupplies...",
                "tagged": false
            },
            "name": {
                "value": "Blackboards & Chalk",
                "confidence": 0.937,
                "tagged": false
            },
            "region": {
                "value": "hampshire",
                "tagged": false
            },
            "website": {
                "value": "bracknellartsupplies.co.uk",
                "tagged": false
            }
        }
        &#8942;
```
</div>
<div>
```json:feedback
{
    "metadata": {
        "identifier": "01896a5c-6c8f-4c2b-b10e-086cd6..."
    },
    "extraction": {
        &#8942;,
        "vendor": {
            "address": "24 Chalk Street Basingstoke ...",
            "country": "GB",
            "email": "selling@blackboardsandchalk.co.uk",
            "name": "Blackboards & Chalk",
            "region": "hampshire",
            "website": "blackboardsandchalk.co.uk"
        }
        &#8942;
```
</div>
</SideBySide>
