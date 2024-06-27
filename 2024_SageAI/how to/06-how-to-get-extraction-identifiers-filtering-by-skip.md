<SectionCard justify='left'>
    <div>
        **SCENARIO**

        At somepoint in the future, you have more Extractions that it is easy to deal
        with.
        You want to get an Extraction that was created in the past.
        You remember that the Extraction you need was created 'in the last couple of
        hours' - for this scenario (let's say) that it is *NOT* among the **twelve**
        most-recently created Extractions.

        This 'How To' will show you how to add a call of the /feed endpoint to your
        Sage Ai applications to get a list of unique identifiers while 'skipping'
        the **twelve** most-recently created Extractions.
    </div>
</SectionCard>
<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and the 'unique Company identifier' values - the value that 
you paste into this code for 'unique Company identifier' *MUST* be associated with an
existing Company, and at-least one Extraction more-than the 'skip' value.</MessageCard>

**Step 1** - create a new file named `feed_skip.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:feed_skip.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed_skip.py is a stand-alone application
# paste a 'unique Company identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return a list of 'unique Extraction identifiers'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
#my_authentication_token = "<my-own-authentication-token-value>"
#customer_unique_id = "<my-unique-company-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_endpoint = f"{base_url}/v1/feed/{customer_unique_id}"
skip = "12"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(f"{feed_endpoint}?skip={skip}", headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print("The `orchestration_id` values, skipping the",skip,"most-recent are:")
print(json.dumps(response_json, indent=4))
```

Step 3 - save, and run

```json:response
The `response.status_code` is: 200
The `orchestration_id` values, skipping the 12 most-recent are:
[
    "4fe4fd71-c697-4e1e-b0ca-06b6075e4ae1",
    "40548a3d-1e7c-4d3b-9d2d-27b9fe525be9",
    "e6940a0d-4748-4e81-940e-cd68894df401",
    "72a2d267-87a1-4ef2-8f95-275a8a9fd166",
    "03dd2715-d0ff-4267-a907-fe29181a42bc",
    "01896a5c-6c8f-4c2b-b10e-086cd6c3310e",
]
```
