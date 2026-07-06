This is a demonstration of the capability of the [Boost.ai](https://boost.ai/) chatbot technology.

The key take-aways are:
1. The only knowledge the chatbot has are the pages (listed below) that describe the user interface at a functional specification level 
2. The chatbot has no literal 'how to' instructions 
3. The chatbot can only generate the conversation (below) by inference  

### Conversation 
| "where is the size name" | "1" | "how do i do that" |
| - | - | - |
|![where is the size name](1_where_is_the_size_name.png)|![1](2_1.png)|![how do i do that](3_how_do_i_do_that.png) |
| "how do i do that" | "next" | "how do i find the site" |
|![how do i do that](4_how_do_i_do_that.png)|![next](5_next.png)|![how do i find the site](6_how_do_i_find_the_site.png)|
| "next" | "next" | "next" |
|![next](7_next.png)|![next](8_next.png)|![next](9_next.png)|

<!-- --------------- --------------- --------------- --------------- --------------- --------------- --------------- --------------- --------------- -->
**Step 1** - I created these 'knowledge articles' about the application:
- [Types of organisational users](types_of_organisational_users.md)
- [Dashboard menu](dashboard_menu.md)
- [Sites page](sites_page.md)
- [SiteDetails page](sitedetails_page.md)
- [Infrastructure tab](infrastructure_tab.md)

<!-- --------------- --------------- --------------- --------------- --------------- --------------- --------------- --------------- --------------- -->
**Step 2** - I created an **Intent** with an agentic action that 'knows' about these 'knowledge articles', and with these **Local instructions**:
```
# User Experience Rules
Ask the user for the type of their organisation as a numbered list
Only show the user the information that is relevant to their organisational type 
Only show the user one step at a time
Ask the user to type 'Next' after each step to confirm that they have completed the step
```

**Step 3** - I had the conversation (above) with the chatbot
