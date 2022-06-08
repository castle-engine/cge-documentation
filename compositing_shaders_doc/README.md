# Compositing Shaders in X3D - documentation

See https://castle-engine.io/compositing_shaders.php for an overview of the idea.

## Remake output (HTML, PDF)

To remake:

- Place `castle-engine` (from https://github.com/castle-engine/castle-engine ) alongside `cge-documentation` repository. Or update the `html-parts` symlink here, to be valid.

- Maybe do

    ```
    cd $CASTLE_ENGINE_PATH/doc/pasdoc/html-parts
    make clean
    make
    ```

    to refresh `html-parts` files, based on current `cge-www` files.

- Install DocBook XML to PDF tools and fonts: on Debian-like systems: `sudo apt install opensp xmlto fop fonts-liberation fonts-dejavu fonts-opensymbol`

- You also need _Castle Game Engine_ build tool working (we use it for HTML post-processing tool written using CGE).

- `make`

- Output is in
    - PDF: `output/xsl/vrml_engine.pdf`
    - HTML: `output/xsl/html/`

Things to do at the end:
- my checklist is in ../compositing_shaders/README.md
- we had to use "hard" pagebreaks, so recheck if they still make sense
- recheck does large figures, esp. the large shinto shrine page, are still Ok.

## History

Originally, this was Ph.D. thesis by Michalis Kamburelis, copyright 2011, 2022.

Portions adapted from my paper (of the same title) for _Theory and Practice of Computer Graphics 2011 conference_.
