Imagine yourself as an employee of a Customer organisation with a licence to use your Product, and that the Site hosting that Product is **Ready**.
You can sign-in to the Sage Provisioning Portal with your **Customer User** role, but you do not yet have access to the **Site**.

Then, before you do anything, someone in your Customer organisation with the **Customer Administrator** or **Customer Operations Agent** role will assign you to the **Site**.  

## What happens next?
1. You will then receive an 'action required' email with an "access temporary credentials" link  
2. When you follow that link, you will be required to sign-in
3. Once signed-in (with your existing credentials), you will be redirected to a page showing your **SPP Hosting** email address, and a 'one time' password - you will need both to access the **Site**

```mermaid
flowchart TD

  START@{shape: stadium, label: "Start"}
  START_NOTE[...]

  RECEIVE_EMAIL(Receive Email)


  START---RECEIVE_EMAIL
```


```mermaid
flowchart LR


classDef Note fill:cornsilk, stroke:white, text-align:left, font-size:13pt, width:350px, margin:-5px, padding:150px;
%% ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
subgraph Product Development
  START@{shape: stadium, label: "Start"}

  RECENTLY_TESTED_NOTE[The Product MUST have been tested within the previous six-months #151;]
  RECENTLY_TESTED{Recently Tested?}


    %%GOBEKLI_TEPE[Göbekli Tepe]
    %%GOBEKLI_TEPE_NOTE[#151; early 'town' in south-eastern Anatolia, founded ~ 9,500 BCE.]
    %%click GOBEKLI_TEPE "https://en.wikipedia.org/wiki/Göbekli_Tepe" _blank


  REQUEST_PRODUCT_PENETRATION_TESTING(Request Product Penetration Testing)
  REMEDIATE_PRODUCT(Remediate Product)
  RECENTLY_TESTED_QUESTION{Remediate Product?}


  NOTIFY_INTEREST_TO_DEPLOY(Notify Interest To Deploy)

end


subgraph Sage Provisioning Portal
  DUMMY_ONE(Dummy One)

  SPP_PRODUCT_MANAGER(Product Manager)
end

subgraph Cloud Operations
  DUMMY_TWO(Dummy Two)

end

subgraph Information Security
  PRODUCT_PENETRATION_TESTING(Product Penetration Testing)
  PRODUCT_PENETRATION_TESTING_REPORT@{ shape: doc, label: "Report" }

end
  %% ---------- ---------- ---------- ---------- ----------
  %% CONNECTIONS & CLASSES
  %% ---------- ---------- ---------- ---------- ----------
  START---RECENTLY_TESTED
  RECENTLY_TESTED-- NO -->REQUEST_PRODUCT_PENETRATION_TESTING
  RECENTLY_TESTED-- YES -->NOTIFY_INTEREST_TO_DEPLOY


  RECENTLY_TESTED_NOTE-.-RECENTLY_TESTED

  REQUEST_PRODUCT_PENETRATION_TESTING--->PRODUCT_PENETRATION_TESTING--->PRODUCT_PENETRATION_TESTING_REPORT--->RECENTLY_TESTED_QUESTION--->REMEDIATE_PRODUCT
  REMEDIATE_PRODUCT-- YES -->REQUEST_PRODUCT_PENETRATION_TESTING
  REMEDIATE_PRODUCT-- NO -->NOTIFY_INTEREST_TO_DEPLOY--->SPP_PRODUCT_MANAGER

class RECENTLY_TESTED_NOTE Note
%%YEAR_DOT-.-9500-.-GOBEKLI_TEPE~~~GOBEKLI_TEPE_NOTE


```
