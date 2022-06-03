#!/bin/bash
set -e
rm -rf "./production"
mkdir -p "./production"
cp -r ./test/sosia_lab3/* ./production
git add .
git commit -m "Deployment from Jenkins"
git push https://Edrudo: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@github.com/Edrudo/sosia_lab3.git
