A Company is a uniquely identified entity, that represents an organisation that transacts
business.

A Vendor, is a Company that sells goods or services. A Recipient, is a Company that buys goods
or services. A Vendor creates, and sends invoices to a Recipient. A Company may be a Vendor,
a Recipient, or both.

A 'minimally viable application' will include the functionality to create a Company entity, 
representing a Recipient, for whom scanned or photographed documents will be uploaded.

An Extraction, the structured JSON object created by Sage Ai from an uploaded scanned or
photographed document, has both `vendor` and `recipient` dictionary-keys. 

Know that the address of the Recipient is the value of the `billing_address` key of the
`header` dictionary.

```json:extraction
"extraction": {
    "header": {
        "billing_address": {
            "value": "42 Art Road\nBracknell\nBerkshire\nRG00 1AA",
            "confidence": 0.516,
            "tagged": false
        },
    &#8942;
    "recipient": {
        "name": {
            "value": "Bracknell Art Supplies",
            "confidence": 0.574,
            "tagged": false
        }
    },
    "vendor": {
        "address": {
            "value": "24 Chalk Street Basingstoke Hampshire BAOD 1AA",
            "confidence": 0.528,
            "tagged": false
        },
        &#8942;
```
