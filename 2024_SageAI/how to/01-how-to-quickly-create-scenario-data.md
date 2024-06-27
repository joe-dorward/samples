<SectionCard justify='left'>
    <div>
        **SCENARIO**

        This tutorial will guide you through the steps of quickly creating 'scenario data',
        that is, creating a Company with a 'unique Company identifier', and some
        associated Extractions, each with their own 'unique Extraction identifiers.
        
        You may then use that Company, and its Extractions in the context of other learning
        content or your own experimentation.
    </div>
</SectionCard>

<CardContainer cols={4}>
    <RoundedImage alt='blackboards_and_chalk_08_01.png' src='/assets/blackboards_and_chalk/blackboards_and_chalk_08_01.png' width={240} />
    <RoundedImage alt='blackboards_and_chalk_08_02.png' src='/assets/blackboards_and_chalk/blackboards_and_chalk_08_02.png' width={240} />
    <RoundedImage alt='blackboards_and_chalk_08_03.png' src='/assets/blackboards_and_chalk/blackboards_and_chalk_08_03.png' width={240} />
    <RoundedImage alt='blackboards_and_chalk_08_04.png' src='/assets/blackboards_and_chalk/blackboards_and_chalk_08_04.png' width={240} />
</CardContainer>

**Step 1** - download the (above) example invoices to a location that make sense for you

**Step 2** - run the Authentication step

**Step 3** - run the Company Creation step

<MessageCard type='proactive'>Since each run of the Company Creation step will return a
unique 'unique Company identifier' you *MUST* run it only once, and keep a record of the value
it returns, for future reference / use.</MessageCard>

**Step 4** - create a new file named (for example) `scenario_data.py`

**Step 5** - copy-and-paste the following Python code into it

```python:scenario_data.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# scenario_data.py is a stand-alone application
# paste a 'unique Company identifier' below, and it's
# ready to run - when it runs it will:
# * report success with a `200` status-code
# * return the 'unique File identifier'
# * return the 'unique Extraction identifier'
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
my_authentication_token = "<my-own-authentication-token-value>"
customer_unique_id = "<my-unique-company-identifier-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json
import base64

from uuid import uuid4

import requests

base_url = "https://models.mercury.development.eu-west-1.sail.sagedatacloud.com/api"
accounts_payable_upload_endpoint = f"{base_url}/v1/accounts-payable/upload"

upload_file_paths = [
    "<path-to-invoices>/blackboards_and_chalk_08_01.png",
    "<path-to-invoices>/blackboards_and_chalk_08_02.png",
    "<path-to-invoices>/blackboards_and_chalk_08_03.png",
    "<path-to-invoices>/blackboards_and_chalk_08_04.png",
]

for upload_file_path in upload_file_paths:
    
    with open(upload_file_path, 'rb') as binary_file:
        binary_file_data = binary_file.read()
        
    base64_encoded_data = base64.b64encode(binary_file_data)
    base64_message = base64_encoded_data.decode('utf-8')
    upload_file_extension = upload_file_path.split(".")[-1]
    
    upload_file_id = str(uuid4())                  
    check_duplicates = False
    
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
    
    print("The `response.status_code` is:",response.status_code)
    print(json.dumps(response_json, indent=4))
```

**Step 6** - edit the `path-to-invoices` value

**Step 7** - save, and run

<MessageCard type='proactive'>The run will result in the creation of unique Extractions,
each with its own 'unique Extraction identifier'. There is no reason for you to keep a
record of these values.</MessageCard>
