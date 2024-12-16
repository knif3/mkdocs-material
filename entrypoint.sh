#!/bin/sh

set -eu

mv "$INPUT_CONFIG_FILE" ../
cd ..
cd "$GITHUB_WORKSPACE/$INPUT_WORKDIR"

sh -c "mkdocs build -c --config-file $INPUT_CONFIG_FILE --site-dir $INPUT_OUTPUT_DIR"
