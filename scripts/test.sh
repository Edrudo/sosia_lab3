#!/bin/bash
mkdir -p "./logs"
cd "./test"
timestamp=$(date +%F_%H-%M-%S)
ext=0
if ! bandit -r ./test.py ./OperationsManager.py
then
  banditLogFile=banditLog.$timestamp
  touch ../logs/$banditLogFile
  bandit -r ./test.py ./OperationsManager.py > ../logs/$banditLogFile
  ext=1
fi

if ! python3.8 test.py
then
  testLogFile=testsLog.$timestamp
  touch ../logs/$testLogFile
  python3.8 ./test.py &> ../logs/$testLogFile
  ext=1
fi

exit $ext