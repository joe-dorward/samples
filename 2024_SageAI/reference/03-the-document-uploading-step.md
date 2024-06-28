<MessageCard type='info'>
    <p>The purpose of this topic is *NEITHER* to teach you, *NOR* imply
    anything to you, about using Python with Sage Ai.</p>
    <p>*RATHER*, the purpose of this topic is to conceptually present the
    Document Uploading Step in its most minimalistic form, as a stand-alone function.</p>
</MessageCard>

```python:document_uploading_by_function.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# document_uploading_by_function.py is a stand-alone application
# paste the 'unique Company identifier' below, and it's
# ready to run - when it runs:
# * it will report success with a `200` status-code
# * return a 'unique File identifier'
# * return a 'unique Extraction identifier'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-authentication-token-value>"
customer_unique_id = "<my-per-customer-unique-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import base64
import json
from uuid import uuid4

import requests
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
def document_uploading_step(
    my_authentication_token: str,
    customer_unique_id: str,
    upload_file_path: str,
    upload_file_id: str
) -> tuple[int, str, str]:
    # the document uploading step as a stand-alone function
    
    base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
    accounts_payable_upload_endpoint = f"{base_url}/v1/accounts-payable/upload"
    
    with open(upload_file_path, 'rb') as binary_file:
        binary_file_data = binary_file.read()
    
    base64_encoded_data = base64.b64encode(binary_file_data)
    base64_message = base64_encoded_data.decode('utf-8')
    
    upload_file_extension = upload_file_path.split(".")[-1]
    
    check_duplicates = True
    
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

    response_json = response.json()

    return response.status_code, response_json["request_uuid"], response_json["orchestration_id"]
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
upload_file_path = "<path-to-invoices>/<invoice-filename>.png"
upload_file_id = str(uuid4())

status_code, request_uuid, orchestration_id = document_uploading_step(
    my_authentication_token,
    customer_unique_id,
    upload_file_path,
    upload_file_id
)

print("The `status_code` is:",status_code)
print("The `request_uuid` is:",request_uuid)
print("The `orchestration_id` is:",orchestration_id)
```

```response
The `status_code` is: 200
The `request_uuid` is: bb61e679-5722-4139-a051-ba1311ee1850
The `orchestration_id` is: 9b6273cd-d9cf-4d05-b07e-006fe4a3d363
```
