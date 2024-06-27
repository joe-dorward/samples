**Step 1** - create a new file named `authentication.py` (for example)

**Step 2** - copy-and-paste the following Python code into it

```python:authentication.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# authentication.py is a stand-alone application
# paste your `client_id` and `client_secret` values below and it's
# ready to run - when it runs:
# * it will report success with a `200` status-code
# * return an Authentication Token
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
client_id = "<your-own-unique-client-id-value>"
client_secret = "<your-own-unique-client-secret-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests

api_audience="SAIL/mercury_orchestration"
oauth_endpoint = "https://id-shadow.sage.com/oauth/token"

posted_data = {"grant_type": "client_credentials",
               "client_id": client_id,
               "client_secret": client_secret,
               "audience": api_audience}

posted_headers = {"content-type": "application/x-www-form-urlencoded"}
    
response = requests.post(oauth_endpoint, data=posted_data, headers=posted_headers)

response_json = json.loads(response.content.decode())

print("The `response.status_code` is:",response.status_code)
print(json.dumps(response_json, indent=4))
```

**Step 3** - paste your own unique `client_id`, and `client_secret` values into it

**Step 4** - save, and run

```json:response
The `response.status_code` is: 200
{
    "access_token": "[REDACTED]",
    "scope": "notify",
    "expires_in": 28800,
    "token_type": "Bearer"
}
```
