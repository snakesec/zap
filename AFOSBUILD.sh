rm -rf /opt/ANDRAX/zap

wget https://github.com/zaproxy/zaproxy/releases/download/v2.16.1/ZAP_2.16.1_Linux.tar.gz

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Download ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

tar -xvzf ZAP_2.16.1_Linux.tar.gz

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Extract ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf ZAP_2.16.1 /opt/ANDRAX/zap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
