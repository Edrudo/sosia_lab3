#!/bin/bash
set -e
rm -rf "./production"
mkdir -p "./production"
cp -r ./test/sosia_lab3/* ./production
git config --global user.email "eduard.duras@gmail.com"
git config --global user.name "Edrudo"
git add .
git commit -m "Deployment from Jenkins"
git push https://Edrudo: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@github.com/Edrudo/sosia_lab3.git
