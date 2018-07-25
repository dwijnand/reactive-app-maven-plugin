#!/usr/bin/env bash

set -o pipefail

die() { echo "Aborting: $*"; exit 1; }

[[ -d reactive-cli ]] || git clone --depth 1 --branch v1.3.0 https://github.com/lightbend/reactive-cli
cd reactive-cli || die "Failed to cd into reactive-cli"
sbt -v "cliNative/run $*"
