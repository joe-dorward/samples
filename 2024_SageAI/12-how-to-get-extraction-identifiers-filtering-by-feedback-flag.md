<SectionCard justify='left'>
    <div>
        **SCENARIO**

        At somepoint in the future, you have more Extractions that it is easy to deal
        with.
        You want to get a list of Extractions **without** associated Feedback
        files.

        This 'How To' will show you how to add a call of the `/feed` endpoint to your
        Sage Ai applications to get a list of 'unique Extraction identifiers' while
        filtering out Extractions **with** associated Feedback files.

        In this 'How To' the 'unique Extraction identifier' of the Extraction **with**
        an associated Feedback file, is `3913ba2a-a6e4-4e3c-a92d-ba8a55fe58da`.
    </div>
</SectionCard>
<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and 'unique Company identifier' values - the value that you
paste into this code for 'unique Company identifier' *MUST* be associated with an existing
Company, with more-than one Extraction, *AND* with at-least one of those Extractions being
associated with a Feedback file.</MessageCard>

<SideBySide leftRatio={2} rightRatio={1} includeTopPadding={false}>
    <div>
        **Step 1** - run the Feed step
    </div>
    <SideBySide leftRatio={1} rightRatio={5} includeTopPadding={false} leftMinWidth={40}>
        <p>
            <SageIcon icon='green' set='detailed'/>
        </p>
        <div>
            <p>**Sage Advice**</p>
            <p>'Feed step' is short-hand for 'getting an unfiltered-list of unique Extraction
            identifiers', and there's a [How To](/ai/docs/v1.0.0/guides/how-to-guides/overview) 
            guide for that</p>
        </div>
    </SideBySide>
</SideBySide>

```json:response
The `response.status_code` is: 200
The `orchestration_id` values are:
[
    "3913ba2a-a6e4-4e3c-a92d-ba8a55fe58da",
    "c9c7df0c-edf8-4eec-baf1-07c94ff8fe7f",
    "4b899302-e939-4f02-8b10-130466803c10",
    "77bd62ff-bbd2-42c3-b73e-5e091625ee2c"
]
```

**Step 2** - create a new file named `feed_filter_with_feedback.py` (for example)

**Step 3** - copy-and-paste the following Python code into 

```python:feed_filter_with_feedback.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed_filter_with_feedback.py is a stand-alone application
# paste a 'unique Company identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return a list of 'unique Extraction identifiers'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-unique-company-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_endpoint = f"{base_url}/v1/feed/{customer_unique_id}?filter_with_feedback=true"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(feed_endpoint, headers=posted_headers)

response_json = response.json()

print("The `response.status_code` is:",response.status_code)
print("The `orchestration_id` values are:")
print(json.dumps(response_json, indent=4))
```

Step 4 - save, and run

```json:response
The `response.status_code` is: 200
The `orchestration_id` values are:
[
    "c9c7df0c-edf8-4eec-baf1-07c94ff8fe7f",
    "4b899302-e939-4f02-8b10-130466803c10",
    "77bd62ff-bbd2-42c3-b73e-5e091625ee2c"
]
```

The Extraction with an associated Feedback file is filtered out.
