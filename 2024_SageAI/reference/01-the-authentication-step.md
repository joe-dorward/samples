<MessageCard type='info'>
    <p>The purpose of this topic is *NEITHER* to teach you, *NOR* imply anything to
    you, about using Python with Sage Ai.</p>
    <p>*RATHER*, the purpose of this topic is to conceptually present the
    Authentication Step in its most minimalistic form, as a stand-alone function.</p>
</MessageCard>

```python:authentication_by_function.py
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# authentication_by_function.py is a stand-alone application
# paste your `client_id` and `client_secret` values below and it's
# ready to run - when it runs it will return:
# * a `200` status-code
# * an Authentication Token
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
# PRIVATE HARD-CODED VALUES
client_id = "<your-own-unique-client-id-value>"
client_secret = "<your-own-unique-client-secret-value>"
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
import json

import requests
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
def authentication_step(client_id: str, client_secret: str) -> tuple[int, str]:
    # the authentication step as a stand-alone function

    api_audience="SAIL/mercury_orchestration"
    oauth_endpoint = "https://id-shadow.sage.com/oauth/token"
    
    posted_data = {"grant_type": "client_credentials",
                   "client_id": client_id,
                   "client_secret": client_secret,
                   "audience": api_audience}
    
    posted_headers = {"content-type": "application/x-www-form-urlencoded"}
        
    response = requests.post(oauth_endpoint, data=posted_data, headers=posted_headers)
    
    response_json = response.json()

    return response.status_code, response_json["access_token"]
# ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
my_status_code, my_authentication_token = authentication_step(client_id, client_secret)

print("The `my_status_code` is:",my_status_code)
print("The `my_authentication_token` is:",my_authentication_token)
```

```json:response
The `my_status_code` is: 200
The `my_authentication_token` is: [REDACTED]
```
