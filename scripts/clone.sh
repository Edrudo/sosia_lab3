#!/bin/bash
set -e
git pull git@github.com:Edrudo/sosia_lab3.git
rm -rf "./test"
mkdir -p "./test"
cp ./*.py ./test/
