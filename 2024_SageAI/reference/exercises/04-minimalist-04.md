<MessageCard type='info'>
    <p>The purpose of this topic is to challenge you to experiment with Sage Ai.</p>
    <p>To challenge you to think about what you can do to better understand how Sage Ai
    works, and what it can do for you.</p>
</MessageCard>

Let's give Sage Ai a little more to work with.

**Step 1** - open your *microsoft-word-like-pdf-exporting* document

**Step 2** - in your *microsoft-word-like-pdf-exporting* document, recreate (something
like) the following:
<RoundedImage alt='Minimalist - 4' src='/assets/exercises/minimalist_04.png' width={600}/>

<MessageCard type='proactive'>
    <p>Although this is an image, in my *microsoft-word-like-pdf-exporting* document, I
    used a four-column, twelve-row table, without borders.</p>
</MessageCard>

**Step 3** - 'save as' / export your document as (for example) `minimalist_04.pdf`

**Step 4** - in the Document Uploading step, update the `customer_unique_id` and
`upload_file_path` values

**Step 5** - save, and run

**Step 6** - in the Getting Results step, update the `orchestration_id` value

**Step 7** - save, and run

Interestingly, you can see that Sage Ai is inferring many more key-values for 
`minimalist_04.pdf`, including that its:
* Buyer's `billing_address` value is `21 Fictitious Drive\nCamberley\nSurrey`
* Seller's `address` value is `14 Minimalist Way Bracknell Berkshire`
* Seller's `name` value is `Minimalists`
* *Line items* are the next two lines, and then:
<p> &#x25CF;&nbsp; The `description` values of each *line item*</p>
<p> &#x25CF;&nbsp; The `tax_amount` values for each *line item* - to do that, it must also be
correctly inferring:</p>
<p>&ensp;&ensp;&#x25CF;&nbsp; The `tax_percentage` value</p>
<p>&ensp;&ensp;&#x25CF;&nbsp; The `quantity` value of each *line item*</p>
<p>&ensp;&ensp;&#x25CF;&nbsp; The `unit_price` value of each *line item*</p>
<p>&ensp;&ensp; and, then doing a calculation with those values</p>

It is also important to emphasise the fact, that Sage Ai has correctly inferred which address
is the buyer's, and which address is the seller's.

```json:extraction
The `response.status_code` is: 200
{
    "metadata": {
        "identifier": "c0f7af22-34fc-4b98-ad1e-6a3ac35f7fbc",
        "file_upload_time": "2024-06-26T13:54:38.401952"
    },
    "extraction": {
        "header": {
            "billing_address": {
                "value": "21 Fictitious Drive\nCamberley\nSurrey",
                "confidence": 0.916,
                "tagged": false
            },
            "currency": {
                "value": "GBP",
                "confidence": 0.9999731546710773,
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
            "address": {
                "value": "14 Minimalist Way Bracknell Berkshire",
                "confidence": 0.894,
                "tagged": false
            },
            "country": {
                "value": "GB",
                "tagged": false
            },
            "name": {
                "value": "Minimalists",
                "confidence": 0.987,
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
        ],
        "line_items": [
            {
                "description": {
                    "value": "Box of things",
                    "confidence": 0.992,
                    "tagged": false
                },
                "quantity": {
                    "value": "2.0",
                    "confidence": 0.995,
                    "tagged": false
                },
                "tax_amount": {
                    "value": "20.00",
                    "tagged": true
                },
                "tax_percentage": {
                    "value": "20.000",
                    "tagged": true
                },
                "total_amount": {
                    "value": "120.00",
                    "confidence": 0.995,
                    "tagged": true
                },
                "total_without_tax": {
                    "value": "100.0",
                    "confidence": 0.995,
                    "tagged": false
                },
                "unit_price": {
                    "value": "50.0",
                    "confidence": 0.995,
                    "tagged": false
                }
            },
            {
                "description": {
                    "value": "Tin of stuff",
                    "confidence": 0.992,
                    "tagged": false
                },
                "quantity": {
                    "value": "1.0",
                    "confidence": 0.995,
                    "tagged": false
                },
                "tax_amount": {
                    "value": "4.69",
                    "tagged": true
                },
                "tax_percentage": {
                    "value": "20.000",
                    "tagged": true
                },
                "total_amount": {
                    "value": "28.14",
                    "confidence": 0.995,
                    "tagged": true
                },
                "total_without_tax": {
                    "value": "23.45",
                    "confidence": 0.995,
                    "tagged": false
                },
                "unit_price": {
                    "value": "23.45",
                    "confidence": 0.995,
                    "tagged": false
                }
            }
        ]
    }
}
```
