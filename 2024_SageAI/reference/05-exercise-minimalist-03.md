<MessageCard type='info'>
    <p>The purpose of this topic is to challenge you to experiment with Sage Ai.</p>
    <p>To challenge you to think about what you can do to better understand how Sage Ai
    works, and what it can do for you.</p>
</MessageCard>

**Step 1** - open your *microsoft-word-like-pdf-exporting* document

**Step 2** - below the floating-point number, add a percentage value of it
(for example 20%)

**Step 3** - below the percentage value, add the total of the floating-point number
and its percentage value
```
14 Minimalist Way, Bracknell, Berkshire
123.45
24.69
148.14
```

**Step 4** - 'save as' / export your document as (for example) `minimalist_03.pdf`

**Step 5** - in the Document Uploading step, update the `customer_unique_id` and
`upload_file_path` values

**Step 6** - save, and run

**Step 7** - in the Getting Results step, update the `orchestration_id` value

**Step 8** - save, and run

Interestingly, you can see that Sage Ai is inferring many more key-values for 
`minimalist_03.pdf`, including that its:
* `document_type` value is `invoice`
* `tax_amount` is `24.69` (with high confidence)
* `tax_percentage` is `20` (with high confidence)
* `tax_rate_name` is `VAT` (with high confidence)

All from a PDF document containing a fictitious address, and a three floating-point numbers.

```json:extraction
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "5697b952-c22d-4eeb-88ea-457720c71a6a",
        "file_upload_time": "2024-06-26T08:03:06.008141"
    },
    "extraction": {
        "header": {
            "currency": {
                "value": "GBP",
                "confidence": 0.9999996203343353,
                "tagged": false
            },
            "document_type": {
                "value": "invoice",
                "tagged": false
            },
            "invoice_type": {
                "value": "debit",
                "confidence": 1.0,
                "tagged": true
            },
            "tax_amount": {
                "value": "24.69",
                "confidence": 0.95,
                "tagged": false
            },
            "total_amount": {
                "value": "148.14",
                "confidence": 0.95,
                "tagged": false
            },
            "total_without_tax": {
                "value": "123.45",
                "confidence": 0.95,
                "tagged": false
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
        },
        "tax_table": [
            {
                "tax": {
                    "value": "24.69",
                    "confidence": 0.95,
                    "tagged": false
                },
                "tax_percentage": {
                    "value": "20.000",
                    "confidence": 0.95,
                    "tagged": false
                },
                "tax_rate_name": {
                    "value": "VAT",
                    "confidence": 0.95,
                    "tagged": false
                },
                "taxable_amount": {
                    "value": "123.45",
                    "confidence": 0.95,
                    "tagged": false
                },
                "total_amount": {
                    "value": "148.14",
                    "confidence": 0.95,
                    "tagged": false
                }
            }
        ]
    }
}
```
