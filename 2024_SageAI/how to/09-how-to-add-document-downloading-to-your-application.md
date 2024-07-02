<SectionCard justify='left'>
    <div>
        **SCENARIO**

        Sage Ai has the capabillity to allow Companies to 'upload' a scanned or
        photographed document by email.

        You have learned (somehow) that a new scanned or photographed document has been
        'uploaded' by email.

        This 'How To' will show you how to add a call of the `/feed/download` endpoint to your
        Sage Ai applications to download a copy of that scanned or photographed document.
    </div>
</SectionCard>

**Step 1** - create a new file named `document_downloading.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:document_downloading.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# document_downloading.py is a stand-alone application
# paste a 'unique Company identifier', and 
# a 'unique Extraction identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * download a copy of an uploaded document
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-authentication-token-value>"
customer_unique_id = "<unique-company-identifier-value>"
orchestration_id = "<unique-extraction-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_download_endpoint = f"{base_url}/v1/feed/{customer_unique_id}/{orchestration_id}/download"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(feed_download_endpoint, headers=posted_headers)

response_json = response.json()

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))

if (response.status_code == 200):
    downloaded_file = requests.get(response_json["download_url"]).content
    file_type = downloaded_file[1:4].decode('utf-8').lower()

    with open(f"{orchestration_id}.{file_type}", 'wb') as f:
        f.write(requests.get(response_json["download_url"]).content)
```

**Step 3** - save, and run

```json:response
The `response.status_code` is: 200
{
    "download_url": "[REDACTED]",
    "details": null
}
```
