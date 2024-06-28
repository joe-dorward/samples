The Document Extraction service can upload scanned or photographed documents in several
file-types, including 'jpg' and 'pdf' files - see the OpenAPI Document for the definitive
list of permitted uploadable file-types for each 'uploading' endpoint.

Currently, in the Accounts Payable Automation workflow, the file-type is inferred by the
file-extension, and passed as the `file_type` value of the `/accounts-payable/upload`
endpoint's request body.

```python
&#8942;
upload_file_extension = upload_file_path.split(".")[-1]

posted_json = {
    "request_uuid": upload_file_id,
    "customer_unique_id": customer_unique_id,
    "file_type": upload_file_extension,
&#8942;
```

The Extraction created from a scanned or photographed document, uploaded by the
`/accounts-payable/upload` endpoint, will have two key-values inferred 
during processing:
* `document_type` - whether the scanned or photographed document is an `invoice`
or a `non accounting document`
* `invoice_type` - whether the invoice amount is 'out going', a `debit`, or 'in coming',
a `credit`

```json:extraction
"extraction": {
    "header": {
        &#8942;
        "document_type": {
            "value": "invoice",
            "tagged": false
        },
        "invoice_type": {
            "value": "debit",
            "confidence": 0.87,
            "tagged": true
        },
        &#8942;
```
