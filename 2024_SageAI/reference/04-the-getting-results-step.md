<MessageCard>
    <p>The purpose of this topic is *NEITHER* to teach you, *NOR* imply anything to
    you, about using Python with Sage Ai.</p>
    <p>*RATHER*, the purpose of this topic is to conceptually present the
    Company Creation Step in its most minimalistic form, as a stand-alone function.</p>
</MessageCard>

```python:getting_results_by_function.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# getting_results_by_function.py is a stand-alone application
# paste a 'unique Company identifier', and 
# a 'unique Extraction identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return an Extraction
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-authentication-token-value>"
customer_unique_id = "<my-unique-company-identifier-value>"
orchestration_id = "<my-unique-extraction-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
def getting_results_step(
    my_authentication_token: str, 
    customer_unique_id: str,
    orchestration_id: str,
) -> tuple[int, str]:
    
    base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
    feed_result_endpoint = f"{base_url}/v1/feed/{customer_unique_id}/{orchestration_id}/results"
    
    posted_headers = {"Authorization": f"Bearer {my_authentication_token}"}
    
    response = requests.get(feed_result_endpoint, headers=posted_headers)
    
    response_json = response.json()

    return response.status_code, response_json
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
status_code, response_json = getting_results_step(my_authentication_token, customer_unique_id, orchestration_id)

print("The `status_code` is:",status_code)
print(json.dumps(response_json, indent=4))
```

```json:extraction
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "fa65264d-c92b-4e04-acaf-2a7dd6e9dc56"
    },
    "extraction": {
        "header": {
            "billing_address": {
                "value": "42 Dominion Drive\nBurnaby\nBritish Columbia\nVOB 1AA",
                "confidence": 0.872,
                "tagged": false
            },
            "currency": {
                "value": "CAD",
                "confidence": 0.9999999664643282,
                "tagged": false
            },
            "document_id": {
                "value": "S&S 0008-2",
                "confidence": 0.947,
                "tagged": false
            },
            "document_language": {
                "value": "eng",
                "confidence": 0.9999999999999998,
                "tagged": false
            },
            "document_type": {
                "value": "invoice",
                "tagged": false
            },
            "invoice_type": {
                "value": "debit",
                "confidence": 0.99,
                "tagged": true
            },
            "issue_date": {
                "value": "2024-06-06",
                "confidence": 0.937,
                "tagged": false
            },
            "tax_amount": {
                "value": "5.00",
                "confidence": 0.95,
                "tagged": false
            },
            "total_amount": {
                "value": "105.00",
                "confidence": 0.95,
                "tagged": false
            },
            "total_without_tax": {
                "value": "100.00",
                "confidence": 0.95,
                "tagged": false
            },
            "bill_of_lading_number": {
                "value": "S&S 0008-2",
                "confidence": 0.947,
                "tagged": false
            },
            "rate_confirmation_number": {
                "value": "S&S 0008-2",
                "confidence": 0.947,
                "tagged": false
            }
        },
        "payment": {
            "payable_amount": {
                "value": "105.0",
                "confidence": 0.975,
                "tagged": false
            }
        },
        "recipient": {
            "name": {
                "value": "Burnaby Bits & Bobs",
                "confidence": 0.786,
                "tagged": false
            }
        },
        "vendor": {
            "address": {
                "value": "24 West 75th Avenue Vancouver British Columbia VOA 1AA",
                "confidence": 0.868,
                "tagged": false
            },
            "country": {
                "value": "CA",
                "tagged": false
            },
            "email": {
                "value": "buying@bitsandbobs.ca",
                "tagged": false
            },
            "name": {
                "value": "Sticks & Stones",
                "confidence": 0.888,
                "tagged": false
            },
            "region": {
                "value": "british columbia",
                "tagged": false
            }
        },
        "tax_table": [
            {
                "tax": {
                    "value": "5.00",
                    "confidence": 0.95,
                    "tagged": false
                },
                "tax_percentage": {
                    "value": "5.000",
                    "confidence": 0.95,
                    "tagged": false
                },
                "tax_rate_name": {
                    "value": "GST",
                    "confidence": 0.95,
                    "tagged": false
                },
                "taxable_amount": {
                    "value": "100.00",
                    "confidence": 0.95,
                    "tagged": false
                },
                "total_amount": {
                    "value": "105.00",
                    "confidence": 0.95,
                    "tagged": false
                }
            }
        ],
        "line_items": [
            {
                "description": {
                    "value": "Bag of sticks",
                    "confidence": 0.92,
                    "tagged": false
                },
                "quantity": {
                    "value": "4.0",
                    "confidence": 0.921,
                    "tagged": false
                },
                "tax_amount": {
                    "value": "5.00",
                    "tagged": true
                },
                "tax_percentage": {
                    "value": "5.000",
                    "tagged": true
                },
                "total_amount": {
                    "value": "105.00",
                    "confidence": 0.922,
                    "tagged": true
                },
                "total_without_tax": {
                    "value": "100.0",
                    "confidence": 0.922,
                    "tagged": false
                },
                "unit_price": {
                    "value": "25.0",
                    "confidence": 0.926,
                    "tagged": false
                }
            }
        ]
    }
}
```
