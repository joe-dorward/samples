**Step 1** - create a new file named `company_creation.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:company_creation.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# company_creation.py is a stand-alone application
# paste the Authentication Token you got from 'authentication.py' below, and it's ready
# to run - when it runs:
# * it will report success with a `200` status-code
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json
from datetime import datetime
from uuid import uuid4

import requests

customer_unique_id = str(uuid4())

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
company_create_endpoint = f"{base_url}/v1/company/create"

company_name = "<company-name>"

posted_json = {
    "company": {
        "name": company_name,
        "unique_id": customer_unique_id,
        "created_at": datetime.now().isoformat()
    }
}

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.post(company_create_endpoint, json=posted_json, headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))
```

**Step 3** - change the string value of `company_name` to something meaningful

**Step 4** - save, and run

```json:response
The `response.status_code` is: 200
{
    "customer_unique_id": "9bfe1f13-b2a6-4d3c-870c-1c604f31a74f"
}
```
