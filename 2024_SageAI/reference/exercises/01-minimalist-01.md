<MessageCard type='info'>
    <p>The purpose of this topic is to challenge you to experiment with Sage Ai.</p>
    <p>To challenge you to think about what you can do to better understand how Sage Ai
    works, and what it can do for you.</p>
</MessageCard>

**Step 1** - using your *microsoft-word-like-pdf-exporting* application of choice, create a blank document

**Step 2** - type a floating-point number (for example) `123.45` into it
```
123.45
```

**Step 3** - 'save as' / export your document as (for example) `minimalist_01.pdf`

**Step 4** - create a Sage Ai application to run the Authentication step

**Step 5** - save, and run

**Step 6** - add the Company Creation step

**Step 7** - save, and run

**Step 8** - add the Document Uploading step, updating the `customer_unique_id` and `upload_file_path` values

**Step 9** - save, and run

**Step 10** - add the Getting Results step, updating the `orchestration_id` value

**Step 11** - save, and run

Since Sage Ai can only return an Extraction with the key-values for the data it can 'read'
and / or infer, at this stage, that's not much.

Interestingly, you can see that Sage Ai has inferred, for `minimalist_01.pdf`, that its:
* `document_type` value is `non accounting document`
* `currency` is `EUR` (Euros) (with low confidence)
* `invoice_type` is `credit` (with low confidence)

All from a PDF document containing a single floating-point number.

```json:extraction
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "ee829556-01f7-4322-ae09-e1a6be30064a",
        "file_upload_time": "2024-06-25T10:06:57.942430"
    },
    "extraction": {
        "header": {
            "currency": {
                "value": "EUR",
                "confidence": 0.6574683616762012,
                "tagged": false
            },
            "document_type": {
                "value": "non accounting document",
                "tagged": false
            },
            "invoice_type": {
                "value": "credit",
                "confidence": 0.6075,
                "tagged": true
            }
        }
    }
}
```
