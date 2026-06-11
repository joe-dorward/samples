This is a simple demonstration of the capability of the [Boost.ai](https://boost.ai/) chatbot technology.

The key take away is, that without literal instructions, but with a functional specification level description of the user interface, the chatbot technology can generate 'how to' instructions.

**Step 1** - I created these 'knowledge articles' about the application:
- [Types of organisational users](types_of_organisational_users.md)
- [Dashboard menu](dashboard_menu.md)
- [Sites page](sites_page.md)
- [SiteDetails page](sitedetails_page.md)
- [Infrastructure tab](infrastructure_tab.md)

**Step 2** - I created an **Intent** with an agentic action that 'knows' about these 'knowledge articles', and with these **Local instructions**:
```
# User Experience Rules
Ask the user for the type of their organisation as a numbered list
Only show the user the information that is relevant to their organisational type 
Only show the user one step at a time
Ask the user to type 'Next' after each step to confirm that they have completed the step
```

**Step 3** - I had the following conversation with the chatbot:

| "where is the size name" | "1" | "how do i do that" |
| - | - | - |
|![where is the size name](1_where_is_the_size_name.png)|![1](2_1.png)|![how do i do that](3_how_do_i_do_that.png) |
