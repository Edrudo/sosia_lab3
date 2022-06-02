#!/bin/bash
set -e
cd "../test"
python -m unittest test.py
bandit -r ./test.py ./OperationsManager.py