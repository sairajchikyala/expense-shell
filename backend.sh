dnf module disable nodejs -y
echo &?

dnf module enable nodejs:20 -y
echo &?

echo install node.js

dnf install nodejs -y
echo &?

echo copy backend service

cp backend.service /etc/systemd/system/backend.service
echo &?

echo remove old content

rm -rf/app

echo &?
echo add expense

useradd expense

echo &?
echo download app

mkdir /app

echo &?

echo download backend

curl -o /tmp/backend.zip https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip

echo &?
echo downloading app

cd /app

echo &?
echo unziping application

unzip /tmp/backend.zip

echo &?

cd /app
echo &?
echo download node.js

npm install

echo&?


systemctl daemon-reload
systemctl enable backend
echo start backend

systemctl start backend
echo &?
echo download mysql app

dnf install mysql -y

echo &?
echo schema

mysql -h 172.31.47.191 -uroot -pExpenseApp@1 < /app/schema/backend.sql

echo &?

