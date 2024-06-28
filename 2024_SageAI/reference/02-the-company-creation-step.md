<MessageCard>
    <p>The purpose of this topic is *NEITHER* to teach you, *NOR* imply anything to
    you, about using Python with Sage Ai.</p>
    <p>*RATHER*, the purpose of this topic is to conceptually present the
    Company Creation Step in its most minimalistic form, as a stand-alone function.</p>
</MessageCard>

```python:company_creation_by_function.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# company_creation_by_function.py is a stand-alone application
# paste your Authentication Token below, and it's
# ready to run - when it runs it will return:
# * a `200` status-code
# * a 'unique Company identifier'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json
from datetime import datetime
from uuid import uuid4

import requests
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
def company_creation_step(my_authentication_token: str, customer_unique_id: str, company_name: str) -> tuple[int, str]:
    # the company creation step as a stand-alone function

    base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
    company_create_endpoint = f"{base_url}/v1/company/create"    
    
    posted_json = {
        "company": {
            "name": company_name,
            "unique_id": customer_unique_id,
            "created_at": datetime.now().isoformat()
        }
    }
    
    posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}
    
    response = requests.post(company_create_endpoint, json=posted_json, headers=posted_headers)
    
    response_json = response.json()

    return response.status_code, response_json["customer_unique_id"]
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
customer_unique_id  = str(uuid4())

status_code, customer_unique_id = company_creation_step(
    my_authentication_token, 
    customer_unique_id, 
    company_name="Bits & Bobs"
)

print("The `status_code` is:",status_code)
print("The `customer_unique_id` is:",customer_unique_id)
```

```response
The `status_code` is: 200
The `customer_unique_id` is: f7fab404-ad26-437e-b5aa-0719efb3d705
```
