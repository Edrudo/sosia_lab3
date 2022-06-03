#!/bin/bash
set -e
rm -rf "./test"
mkdir -p "./test"
cd "./test"
git add .
git commit -m "Deployment from Jenkins"
git clone https://Edrudo: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@github.com/Edrudo/sosia_lab3.git