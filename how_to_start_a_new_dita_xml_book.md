> This page is primarily a 'note to self'

## Structure
1. Create a new (local) project folder - for example ``P9 - Memories``
2. Within that - create a ``BOOKMAP`` folder
3. Within that - create a ``CHAPTER_01`` folder
4. Within that - create a ``TOPIC`` folder

## Files
1. Open &lt;oXygen/&gt; XML Author
2. Within the ``P9 - Memories`` folder - create a new project
3. Within the ``TOPIC`` folder - create a new topic file in the form ``t_<filename>.dita``
4. Within the ``CHAPTER_01`` folder - create a MAP file in the form ``m_<chapter-name>.ditamap``
5. Within the MAP file - add a ``<topicref`` element - with these attributes:
   * ``href`` referring to the TOPIC file
   * ``format=dita``
   * ``type=topic``
6. Within the ``BOOKMAP`` folder - create a BOOKMAP file in the form ``b_<book-bame>.ditamap``
7. Within the BOOKMAP file - add a ``<chapter`` element - with these attributes:
   * ``href`` referring to the MAP file
   * ``format=ditamap``

## Test Build
1. Test build the BOOKMAP - by default the output will be HTML 5

## Customise Build
1. In **Configure Transformation Scenarios** - select **DITA MAP EPUB**
2. Click the **Duplicate** button
3. Rename the duplicate by appending '(custom)'
4. Click the **Edit** button and set:
   * ``args.copycss=yes``
   * ``args.css=<path-to-css-file>``
   * ``cover.graphic.file=<path-to-cover-image>``
