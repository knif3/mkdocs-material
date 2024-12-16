#!/bin/sh

set -eu

mv "$INPUT_CONFIG_FILE" ../
cd ..

sh -c "mkdocs build -c --config-file $INPUT_CONFIG_FILE --site-dir $GITHUB_WORKSPACE/../$INPUT_OUTPUT_DIR"
mv "$GITHUB_WORKSPACE/../$INPUT_OUTPUT_DIR" "$GITHUB_WORKSPACE/$INPUT_OUTPUT_DIR"
