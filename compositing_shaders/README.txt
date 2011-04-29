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
- One from my thousand English mistakes: check "it's" is always used as "it is".
- ispell (american)
- Check "pdffonts compositing_shaders.pdf". Every font should have Embed=Yes.
