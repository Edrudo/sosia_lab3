#!/bin/bash
set -e
echo "1"
mkdir -p "../test"
echo "2"
rm -r "../test"
echo "3"
cd "../test"
echo "4"
git clone git@github.com:Edrudo/sosia_lab3.git
echo "5"
