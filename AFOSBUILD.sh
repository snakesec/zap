rm -rf /opt/ANDRAX/zap

wget https://github.com/zaproxy/zaproxy/releases/download/w2025-05-26/ZAP_WEEKLY_D-2025-05-26.zip

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Download ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

unzip ZAP_WEEKLY_D-2025-05-26.zip

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Extract ZAP... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf ZAP_D-2025-05-26/ /opt/ANDRAX/zap

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
