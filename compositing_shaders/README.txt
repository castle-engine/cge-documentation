This is my (Michalis) paper, for TGCP 2011 (http://www.eguk.org.uk/TPCG11/)
conference.

This directory contains the LaTeX source of the paper,
and the original screenshots PNG images.

To actually generate the final PDF you will also need the LaTeX style files,
available for download from
http://www.eguk.org.uk/TPCG11/submission/egPublStyle-TPCG11.zip
(linked from the page http://www.eguk.org.uk/TPCG11/submission/submission.htm)
(I don't distribute it, as I don't know it's license etc.)
Place here (I usually just symlink them here) files:
    EGUKTPCG11.sty
    dfT1pcr.fd
    dfT1phv.fd
    dfT1ptm.fd
    dfadobe.sty
    eg-alpha.bst
    egpubl.cls
    egweblnk.sty

After placing these files here, run "make".

Michalis checklist to do at the end:
- Remember to add a couple of references, in particular to scientific papers.
  It kooks like I assume too often that people are familiar with some stuff
  / can google them for themselves.
- One from my thousand English mistakes: check "it's" is always used as "it is".
- ispell (american)
- Check "pdffonts compositing_shaders.pdf". Every font should have Embed=Yes.
- Recheck to not repeat the same mistakes as
  http://vrmlengine.svn.sourceforge.net/viewvc/vrmlengine/trunk/papers/compositing_shaders/compositing_shaders.tex?r1=8831&r2=8830&pathrev=8831
- Recheck layout:
  - Make sure figures are placed as close as possible to the text that refers
    to them.
  - Make sure figure size is maximized: width = column / page width,
    and height = maximum that still keeps the page count within bounds,
    crop if necessary.
  - No hanging things at the end of columns/pages.
