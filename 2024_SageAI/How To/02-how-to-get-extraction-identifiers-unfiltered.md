<SectionCard justify='left'>
    <div>
        **SCENARIO**

        This 'How To' will show you how to add a call of the `/feed` endpoint to your Sage Ai
        applications to get the unfiltered-list of 'unique Extraction identifiers' associated
        with a specific 'unique Company identifier'.
    </div>
</SectionCard>

<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and a 'unique Company identifier' value - the value that 
you paste into this code for 'unique Company identifier' *MUST* be associated with an
existing Company, and at-least one Extraction.</MessageCard>

**Step 1** - create a new file named `feed.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:feed.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed.py is a stand-alone application
# paste a 'unique Company identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return an unfiltered-list of 'unique Extraction identifiers'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-unique-company-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_endpoint = f"{base_url}/v1/feed/{customer_unique_id}"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(feed_endpoint, headers=posted_headers)

response_json = response.json()

print("The `response.status_code` is:",response.status_code)
print("The `orchestration_id` values are:")
print(json.dumps(response_json, indent=4))
```

Step 3 - save, and run

```json:response
The `response.status_code` is: 200
The `orchestration_id` values are:
[
    "c9c7df0c-edf8-4eec-baf1-07c94ff8fe7f",
    "4b899302-e939-4f02-8b10-130466803c10",
    "77bd62ff-bbd2-42c3-b73e-5e091625ee2c",
    "f8243cf2-4430-4dd5-a60d-6a9e06d7d331"
]
```
