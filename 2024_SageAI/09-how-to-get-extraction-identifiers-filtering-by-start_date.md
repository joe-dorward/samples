<SectionCard justify='left'>
    <div>
        **SCENARIO**

        At somepoint in the future, you have more Extractions that it is easy to deal with.
        You want to get an Extraction that was created in the past.
        You remember that the Extraction you need was created 'in the last couple of days' - for this
        scenario (let's say) sometime **after** June 4th 2023.

        This 'How To' will show you how to add a call of the `/feed` endpoint to your Sage Ai
        applications to get a list of unique identifiers, of Extractions created
        **after** a specific date. 
    </div>
</SectionCard>
<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and the 'unique Company identifier' values - the value that 
you paste into this code for 'unique Company identifier' *MUST* be associated with an
existing Company, and at-least one Extraction created **after** a specific date.</MessageCard>

**Step 1** - create a new file named `feed_start_date.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:feed_start_date.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed_start_date.py is a stand-alone application
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
feed_endpoint = f"{base_url}/v1/feed/{customer_unique_id}"
start_date = "2024-06-04"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(f"{feed_endpoint}?start_date={start_date}", headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print("The `orchestration_id` values, after:", start_date,"are:")
print(json.dumps(response_json, indent=4))
```

Step 3 - save, and run

```json:response
The `response.status_code` is: 200
The `orchestration_id` values, after: 2024-06-04 are:
[
    "4fe4fd71-c697-4e1e-b0ca-06b6075e4ae1",
    "40548a3d-1e7c-4d3b-9d2d-27b9fe525be9"
]
```
