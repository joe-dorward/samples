<SectionCard justify='left'>
    <div>
        **SCENARIO**

        Your application has 'just' uploaded a scanned or photographed document to Sage
        Ai.
        If your application tries to get results before the Extraction generation is
        complete, it will get the `404 - NotFoundError` error.
        To avoid getting the error, your application can poll the status of the extraction
        process until the `status` value is `completed` before trying to get the results.

        This 'How To' will show you how to add a call of the `/feed/status` endpoint to your
        Sage Ai applications to poll the status of the extraction process.
    </div>
</SectionCard>

**Step 1** - create a new file named `getting_extraction_status.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:getting_extraction_status.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# getting_extraction_status.py is a stand-alone application
# paste a 'unique Company identifier' and
# a 'unique Extraction identifier' below, and it's
# ready to run - when it runs:
# * it will report success with a `200` status-code
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-unique-customer-identifier-value>"
orchestration_id = "<my-unique-extraction-identifier-value"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json
import time

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_status_endpoint = f"{base_url}/v1/feed/{customer_unique_id}/{orchestration_id}/status"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

try_request = True
while try_request:
    response = requests.get(feed_status_endpoint, headers=posted_headers)
    response_json = response.json()

    if response_json["status"] != "completed":
        time.sleep(5)
        continue
        
    try_request = False

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))
```

**Step 3** - save, and run

```json:response
The `response.status_code` is: 200
{
    "status": "completed",
    "details": null
}
```
