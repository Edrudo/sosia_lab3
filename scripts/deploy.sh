#!/bin/bash
set -e
rm -rf "./production"
mkdir -p "./production"
cp -r ./test/* ./production