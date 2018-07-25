#!/usr/bin/env bash

set -o pipefail

die() { echo "Aborting: $*"; exit 1; }

[[ -d reactive-cli ]] || git clone --depth=1 https://github.com/lightbend/reactive-cli
cd reactive-cli || die "Failed to cd into reactive-cli"
git checkout v1.3.0 || die "Failed to git checkout"
sbt "cliNative/run $*"
