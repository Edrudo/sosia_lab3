#!/bin/bash
set -e
cd "../test"
if ! python -m unittest test.py || ! bandit -r ./test.py ./OperationsManager.py
then
  timestamp=$(date +%s)
  testLogFile=testsLog.$timestamp
  banditLogFile=banditLog.$timestamp

  touch ../logs/testLogFile
  touch ../logs/banditLogFile

  python -m unittest test.py > ../logs/testLogFile
  bandit -r ./test.py ./OperationsManager.py > ../logs/banditLogFile
  exit 1
fi
