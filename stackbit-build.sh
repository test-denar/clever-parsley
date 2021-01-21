#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://artem-stackbit.ngrok.io/pull/60098112f68a4d68666f27d0

# build site
npm run build

echo "stackbit-build.sh: finished build"
