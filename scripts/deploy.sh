#!/bin/bash
set -e
mkdir -p "./production"
rm -rf "./production"
cp -r ./test/* ./production