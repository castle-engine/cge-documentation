#!/bin/bash
set -eu

SF_USERNAME="$1"
SF_PATH="$2"

ssh "$SF_USERNAME",castle-engine@shell.sourceforge.net create

ssh "$SF_USERNAME",castle-engine@shell.sourceforge.net <<EOF
cd "$SF_PATH"
rm -Rf html/ compositing_shaders_doc.pdf
tar xzvf output.tar.gz
rm -f output.tar.gz
EOF
