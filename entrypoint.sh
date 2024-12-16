#!/bin/sh

set -eu
cd "$INPUT_WORKDIR"

sh -c "mkdocs build -c --config-file $INPUT_CONFIG_FILE --site-dir $INPUT_OUTPUT_DIR"
