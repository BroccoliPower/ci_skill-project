#/bin/bash
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9889)
if [ "$response" == "200" ]; then
echo "Код ответа: $response"
./telegram.sh 163689317  "Тест пройден"
exit 0
else
echo "Код ответа: $response"
./telegram.sh 163689317  "Тест не пройден"
exit 1
fi
