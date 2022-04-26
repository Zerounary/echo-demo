#! /bin/bash

app="echo-demo"
# kill server pid if exists
if test -n "$(pidof $app)"; then
  echo "Killing server" 
  kill -9 $(pidof $app)
fi
# 避免nohup命令不终止
echo "restart server"
nohup /home/app/./$app >/dev/null 2>&1 &
echo "restart server done"