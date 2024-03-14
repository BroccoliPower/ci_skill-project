#!/bin/bash
#хэш бота
token='6778147207:AAH_d8oscAS0xi7E9aHX6lqLcDPlYxesUDc'   
chat="$1"
subj="$2"
message="$3"
/usr/bin/curl -s --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${chat}\",\"text\":\"${subj}\n${message}\"}" "https://api.telegram.org/bot${token}/sendMessage"
