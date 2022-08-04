#!/bin/bash

set -euo pipefail

type aria2c

cd "$(realpath "$(dirname "$0")/..")"

mkdir -p omegafold/weights
aria2c -x16 -j32 https://helixon.s3.amazonaws.com/release1.pt \
	-o omegafold/weights/release_current.pt
