#!/bin/bash
cd "./test"
timestamp=$(date +%F_%H-%M-%S)
ext=0
if ! bandit -r ./test.py ./OperationsManager.py
then
  banditLogFile=banditLog.$timestamp
  touch ../logs/$banditLogFile
  echo "======================================================================================================"
  bandit -r ./test.py ./OperationsManager.py > ../logs/$banditLogFile
  echo "======================================================================================================"
  ext=1
fi

if ! python test.py
then
  testLogFile=testsLog.$timestamp
  touch ../logs/$testLogFile
  python ./test.py &> ../logs/$testLogFile
  ext=1
fi

exit $ext