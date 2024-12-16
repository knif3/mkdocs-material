#!/bin/sh

set -eu

# Move out config file, because mkdocs won't allow to process a directory if the config file is within that.
mv "$INPUT_CONFIG_FILE" ../
cd ..

sh -c "mkdocs build -c --config-file $INPUT_CONFIG_FILE --site-dir $GITHUB_WORKSPACE/../$INPUT_OUTPUT_DIR"

# Move the build directory back to the repo, so the knif3/rsync-deployments action can work on it.
mv "$GITHUB_WORKSPACE/../$INPUT_OUTPUT_DIR" "$GITHUB_WORKSPACE/$INPUT_OUTPUT_DIR"
