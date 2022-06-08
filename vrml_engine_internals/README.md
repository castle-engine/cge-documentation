# Castle Game Engine internals - (Outdated) Overview of the Castle Game Engine and VRML 1.0

## About this book

This book is available online on

- https://castle-engine.io/engine_doc.php

- https://castle-engine.io/vrml_engine_doc/output/xsl/html/

It's an old (started in 2006, with very few updates since then!) description of _VRML 1.0_ and [Castle Game Engine](https://castle-engine.io/).

While I keep it available for historical reasons, you should better:

- Use _Castle Game Engine_ manual, https://castle-engine.io/documentation.php .

- And instead of VRML 1.0, use X3D, preferably X3D 4.0. It is supported by [Castle Game Engine](https://castle-engine.io/) and [view3dscene](https://castle-engine.io/view3dscene.php) of course.

## Recreating the output

- Place `demo-models` (from https://github.com/castle-engine/demo-models ) alongside `cge-documentation` repository. This way symlink `example_models` here will work. Alternatively, delete and create a valid `example_models` symlink, to wherever you keep demo-models.

- Place `castle-engine` (from https://github.com/castle-engine/castle-engine ) alongside `cge-documentation` repository. Or update the `html-parts` symlink here, to be valid.

- Maybe do

    ```
    cd $CASTLE_ENGINE_PATH/doc/pasdoc/html-parts
    make clean
    make
    ```

    to refresh `html-parts` files, based on current `cge-www` files.

- Install DocBook with XML tools: on Debian-like systems: `apt get docbook-xml docbook-xsl xmlto opensp fop`

- You also need _Castle Game Engine_ build tool working (we use it for HTML post-processing tool written using CGE).

- `make`

- Output is in
    - PDF: `output/xsl/vrml_engine.pdf`
    - HTML: `output/xsl/html/`
