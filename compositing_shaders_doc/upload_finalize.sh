#!/bin/bash
set -eu

SSH_USERNAME="$1"
SSH_HOST="$2"
SSH_PATH="$3"

ssh "${SSH_USERNAME}@${SSH_HOST}" <<EOF
cd "$SSH_PATH"
rm -Rf html/ compositing_shaders_doc.pdf
tar xzvf output.tar.gz
rm -f output.tar.gz
# allow group (apache) to read the files/dirs
~/bin/www_permissions.sh
EOF
