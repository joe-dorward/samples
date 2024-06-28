<MessageCard type='info'>
    <p>The purpose of this topic is to challenge you to experiment with Sage Ai.</p>
    <p>To challenge you to think about what you can do to better understand how Sage Ai
    works, and what it can do for you.</p>
</MessageCard>

**Step 1** - open your *microsoft-word-like-pdf-exporting* document

**Step 2** - above the floating-point number, add a fictitious (local to you) address
(for example):
```
14 Minimalist Way, Bracknell, Berkshire
123.45
```

**Step 3** - 'save as' / export your document as (for example) `minimalist_02.pdf`

**Step 4** - in the Document Uploading step, update the `customer_unique_id` and `upload_file_path` values

**Step 5** - save, and run

**Step 6** - in the Getting Results step, update the `orchestration_id` value

**Step 7** - save, and run

Since Sage Ai can only return an Extraction with the key-values for the data it can 'read'
and / or infer, at this stage, that's not much.

Interestingly, you can see that Sage Ai has inferred, for `minimalist_02.pdf`, that its:
* `currency` value is `GBP` (with high confidence)
* `document_type` value is `non accounting document`
* `invoice_type` is `debit` (with high confidence)
* `vendor` - `country` value is `GB`
* `vendor` - `region` value is `berkshire`

All from a PDF document containing a fictitious address, and a single floating-point number.

```json:extraction
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "c6bf0220-d36b-4ce6-a47a-bebc8ef0711f",
        "file_upload_time": "2024-06-25T12:59:25.202310"
    },
    "extraction": {
        "header": {
            "currency": {
                "value": "GBP",
                "confidence": 0.9999999946829488,
                "tagged": false
            },
            "document_type": {
                "value": "non accounting document",
                "tagged": false
            },
            "invoice_type": {
                "value": "debit",
                "confidence": 1.0,
                "tagged": true
            }
        },
        "vendor": {
            "country": {
                "value": "GB",
                "tagged": false
            },
            "region": {
                "value": "berkshire",
                "tagged": false
            }
        }
    }
}
```
