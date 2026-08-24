## Breaking lines
The first method of breaking  
lines in markdown is to put two  
spaces at the end of the line to  
be broken  

The second method of breaking</br>lines in markdown is to add</br>the HTML code `</br>` where</br>you want to break lines.  

To add a blank line

between two lines

add a blank line between them

## Links
The markdown is `[title](https://www.example.com)` - see cheat sheet  

Otherwise: 
- `[Boost.ai](https://boost.ai/)` renders as [Boost.ai](https://boost.ai/)
- `[Types of organisational users](types_of_organisational_users.md)` renders as [Types of organisational users](types_of_organisational_users.md) 
- `[Types of organisational users](https://github.com/joe-dorward/samples/blob/main/2025_Sage_Playa/Size_Name/types_of_organisational_users.md)` renders as [Types of organisational users](https://github.com/joe-dorward/samples/blob/main/2025_Sage_Playa/Size_Name/types_of_organisational_users.md)

## Spaces
If you type a space within an 'md' file - a space 'should' appear there when rendered.
If you are copying and pasting content into an 'md' file, you should know that not all copied 'spaces' are actually spaces.

To 'force' a space - either:
- Delete the non-space and type it into the 'md' file
- Add the HTML non-breaking-space code `&nbsp;` - that will keep both words/characters together
- Add the ASCII code `&#32;` for a space - `to&#32;get&#32;her` renders as to&#32;get&#32;her
