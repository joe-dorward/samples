When a **Site** is added, its first user will be added with the **Customer Administrator** role.
Other users will likely be added by that **Customer Administrator** user.
Either way, once you are added as a user of a **Site**:
* You will receive an email invitation with an "access temporary credentials" link
* When you follow that link, you will be required to sign-up / sign-in
* Once signed in, you will be redirected to a page showing your **SPP Hosting** email address, and a 'one time' password

```mermaid
flowchart TD

  START@{shape: stadium, label: "Start"}
  START_NOTE[...]


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
