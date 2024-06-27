**Step 1** - get an actual scanned or photographed document ready to upload

**Step 2** - create a new file named `document_uploading.py`

**Step 3** - copy-and-paste the following Python code into it

```python:document_uploading.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# document_uploading.py is a stand-alone application
# paste the 'unique Company identifier' below, and it's
# ready to run - when it runs:
# * it will report success with a `200` status-code
# * return a 'unique File identifier'
# * return a 'unique Extraction identifier'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-per-customer-unique-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import base64
import json
from uuid import uuid4

import requests

upload_file_id = str(uuid4())

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
accounts_payable_upload_endpoint = f"{base_url}/v1/accounts-payable/upload"

upload_file_path = "<path-to-sample-invoice>/sample_invoice.pdf" # for example

check_duplicates = True

with open(upload_file_path, 'rb') as binary_file:
    binary_file_data = binary_file.read()

base64_encoded_data = base64.b64encode(binary_file_data)
base64_message = base64_encoded_data.decode('utf-8')

upload_file_extension = upload_file_path.split(".")[-1]

posted_json = {
    "request_uuid": upload_file_id,
    "customer_unique_id": customer_unique_id,
    "file_type": upload_file_extension,
    "file_base_64": base64_message,
    "file_url": None,
    "correlation_id": None,
    "settings": {
        "with_line_item": True,
        "check_duplicates": check_duplicates
    },
}

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.post(accounts_payable_upload_endpoint, json=posted_json, headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))
```

**Step 4** - change the string value of `upload_file_path` to be the actual path to an actual
scanned or photographed document

**Step 5** - save, and run

```json:response
The `response.status_code` is: 200
{
    "request_uuid": "e5690c3f-3ea7-48fa-9646-384176458626",
    "orchestration_id": "0347ccb6-dd5e-4668-b967-ec896d6ae435"
}
```

<MessageCard type='proactive'><p>The `request_uuid` value is the same as the generated
`upload_file_id` value.</p>
<p>The `orchestration_id` value, is the 'unique extraction identifier'.</p></MessageCard>
