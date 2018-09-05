#!/bin/bash
set -euo pipefail

echo "============================================================================================="
echo "installing repo-global dependencies..."
npm i --no-package-lock --global-style

# Now that we have lerna --concurrency 1 available...
export PATH=node_modules/.bin:$PATH

echo "============================================================================================="
echo "bootstrapping..."
lerna --concurrency 1 bootstrap --reject-cycles
