#!/usr/bin/env bash
jsonStr=('{"status": "OK", "code": "200", "msg": "Page loaded"}' '{"status": "FATAL", "code": "999", "msg": "System Down"}' '{"status": "WARN", "code": "600", "msg": "Page loads slower than expected"}' '{"status": "LOG", "code": "100", "msg": "Sample Troubleshooting Message"}' '{"status": "LOG", "code": "101", "msg": "Receiving Requests"}')
while true
do
  r=$(((RANDOM%5)))
  echo ${jsonStr[$r]}
  sleep 1
done
