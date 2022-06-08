# Compositing Shaders in X3D - TPCG 2011 paper

This is Michalis Kamburelis' paper, accepted for TPCG 2011 (http://www.eguk.org.uk/TPCG11/) conference.

This directory contains the LaTeX source of the paper,
and the original screenshots PNG images.

Note: `egPublStyle-TPCG11` files are not mine, they are from http://www.eguk.org.uk/TPCG11/submission/egPublStyle-TPCG11.zip (linked from the page http://www.eguk.org.uk/TPCG11/submission/submission.htm ).

Create output PDF by just `make`.

Checklist to do at the end:

* Remember to add a couple of references, in particular to scientific papers. It looks like I assume too often that people are familiar with some stuff / can google them for themselves.

* Some straightforward English hints:
    * check "it's" is always used as "it is".
    * avoid long notes in parenthesis inside sentences.
    * avoid ", and", unless in enumeration.
    * avoid "don't / doesn't" --- usually "do not / does not" sounds better?
    * don't start sentences with "and" (it's informal).
    * use ``'' in English (not ,,'' as in Polish).

* Recheck layout:
    * Make sure figures are placed as close as possible to the text that refers to them.
    * Make sure figure size is maximized: width = column / page width, and height = maximum that still keeps the page count within bounds, crop if necessary.
    * No hanging things at the end of columns/pages.
* ispell (american)
* Check "pdffonts compositing_shaders.pdf". Every font should have Embed=Yes.
