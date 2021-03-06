#!/bin/bash
cd "./test/sosia_lab3/"
mkdir "../../logs"
timestamp=$(date +%F_%H-%M-%S)
ext=0

banditLogFile=banditLog.$timestamp
touch ./logs/$banditLogFile
bandit -r ./test.py ./OperationsManager.py > ../../logs/$banditLogFile

if ! python3.8 ./test.py
then
  testLogFile=testsLog.$timestamp
  touch ../../logs/$testLogFile
  python3.8 ./test.py &> ../../logs/$testLogFile
  ext=1
fi

exit $ext