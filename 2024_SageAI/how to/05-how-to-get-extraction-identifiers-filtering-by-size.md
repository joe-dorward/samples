<SectionCard justify='left'>
    <div>
        **SCENARIO**

        At somepoint in the future, you have more Extractions that it is easy to deal
        with.
        You want to get an Extraction that was created in the past.
        You remember that the Extraction you need was created 'in the last couple of
        hours' - for this scenario (let's say) that it is among the **eight**
        most-recently created Extractions.

        This 'How To' will show you how to add a call of the `/feed` endpoint to your
        Sage Ai applications to get a list of unique identifiers, of the **eight** 
        most-recently created Extractions. 
    </div>
</SectionCard>
<MessageCard type='proactive'>Since each Extraction is uniquely identified by both its own 
'unique Extraction identifier' and the 'unique Company identifier' values - the value that 
you paste into this code for 'unique Company identifier' *MUST* be associated with an
existing Company, and at-least one Extraction.</MessageCard>

**Step 1** - create a new file named `feed_size.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:feed_size.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# feed_size.py is a stand-alone application
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
size = "8"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(f"{feed_endpoint}?size={size}", headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print("The most-recent:",size,"`orchestration_id` values are:")
print(json.dumps(response_json, indent=4))
```

Step 3 - save, and run

```json:response
The `response.status_code` is: 200
The most-recent: 8 `orchestration_id` values are:
[
    "289e38ae-302f-4254-900f-8a56b4e31066",
    "0e3bc430-2734-46b5-906e-22f3caee503d",
    "ae7475ff-7e6e-46fd-a54a-de18e6c6588f",
    "f403196e-0f6f-484a-a8c5-d0e7db241db6",
    "77bd62ff-bbd2-42c3-b73e-5e091625ee2c",
    "f8243cf2-4430-4dd5-a60d-6a9e06d7d331",
    "dec83624-7d53-4ecc-9e23-f9f8511423fb",
    "3ba43cb1-b3c9-4cf9-8219-a09c0443086d"
]
```
