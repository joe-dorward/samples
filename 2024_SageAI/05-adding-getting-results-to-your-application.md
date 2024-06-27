**Step 1** - create a new file named `getting_results.py`

**Step 2** - copy-and-paste the following Python code into it

```python:getting_results.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# getting_results_by_function.py is a stand-alone application
# paste a 'unique Company identifier', and 
# a 'unique Extraction identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return an Extraction
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-unique-customer-identifier-value>"
orchestration_id = "<my-unique-extraction-identifier-value"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

upload_file_id = str(uuid4())
base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
feed_result_endpoint = f"{base_url}/v1/feed/{customer_unique_id}/{orchestration_id}/results"

posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}

response = requests.get(feed_result_endpoint, headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))
```

**Step 5** - save, and run

<MessageCard type='proactive'><p>After uploading a scanned or photographed document, Sage Ai will
take *at least* a few seconds to generate an Extraction.</p>
<p>If you try to get results before the Extraction generation is complete - you will get a 
`404` - `NotFoundError` error.</p>
<p>You may, therefore, need to contrive a way to delay 'getting results' to give Sage Ai the
few seconds that it needs to generate an Extraction.</p></MessageCard>

```json:response
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "36b5082d-c72e-4d34-9513-118300c51ef1"
    },
    "extraction": {
        "header": {
            "currency": {
                "value": "GBP",
                "confidence": 0.9997967500436936,
                "tagged": false
            },
            "document_id": {
                "value": "B&C 0008-1",
                "confidence": 0.995,
                "tagged": false
            },
            "document_language": {
                "value": "eng",
                "confidence": 0.8828118498799505,
                "tagged": false
            },
            "document_type": {
                "value": "invoice",
                "tagged": false
            },
            "invoice_type": {
                "value": "debit",
                "confidence": 0.88,
                "tagged": true
            },
            "issue_date": {
                "value": "2024-05-10",
                "confidence": 0.995,
                "tagged": false
            },
            "total_amount": {
                "value": "120.0",
                "confidence": 0.995,
                "tagged": false
            },
            "bill_of_lading_number": {
                "value": "B&C 0008-1",
                "confidence": 0.995,
                "tagged": false
            },
            "rate_confirmation_number": {
                "value": "B&C 0008-1",
                "confidence": 0.995,
                "tagged": false
            }
        },
        "payment": {
            "payable_amount": {
                "value": "120.0",
                "confidence": 0.995,
                "tagged": false
            }
        },
        "vendor": {
            "address": {
                "value": "24 Chalk Street Basingstoke Hampshire BA00 1AA",
                "confidence": 0.995,
                "tagged": false
            },
            "country": {
                "value": "GB",
                "tagged": false
            },
            "name": {
                "value": "Blackboards & Chalk",
                "confidence": 0.994,
                "tagged": false
            },
            "region": {
                "value": "hampshire",
                "tagged": false
            }
        }
    }
}
```
