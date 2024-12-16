#!/bin/sh

set -eu
cd "$GITHUB_WORKSPACE/$INPUT_WORKDIR"

sh -c "mkdocs build -c --config-file $GITHUB_WORKSPACE/$INPUT_CONFIG_FILE --site-dir $GITHUB_WORKSPACE/$INPUT_OUTPUT_DIR ."
