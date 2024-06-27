<SectionCard justify='left'>
    <div>
        **SCENARIO**

        At somepoint in the future, you have more Extractions that it is easy to deal with.
        You want to get an Extraction that was created in the past.
        You remember that the Extraction you need was created early 'last year' - for this
        scenario (let's say) sometime **before** the end of June 2023.

        This 'How To' will show you how to add a call of the `/feed` endpoint to your Sage Ai
        applications to get a list of unique identifiers, of Extractions created
        **before** a specific end-date. 
    </div>
</SectionCard>

<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and the 'unique Company identifier' values - the value that 
you paste into this code for 'unique Company identifier' *MUST* be associated with an
existing Company, and at-least one Extraction created **before** the specific end-date.</MessageCard>

**Step 1** - create a new file named `feed_end_date.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:feed_end_date.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed_end_date.py is a stand-alone application
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
end_date = "2023-06-30"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(f"{feed_endpoint}?end_date={end_date}", headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print("The `orchestration_id` values, before:", end_date,"are:")
print(json.dumps(response_json, indent=4))
```

Step 3 - save, and run

```json:response
The `response.status_code` is: 200
The `orchestration_id` values, before: 2023-06-30 are:
[
    "4fe4fd71-c697-4e1e-b0ca-06b6075e4ae1",
    "40548a3d-1e7c-4d3b-9d2d-27b9fe525be9",
    "e6940a0d-4748-4e81-940e-cd68894df401",
    "72a2d267-87a1-4ef2-8f95-275a8a9fd166",
    "03dd2715-d0ff-4267-a907-fe29181a42bc",
    "01896a5c-6c8f-4c2b-b10e-086cd6c3310e"
]
```
